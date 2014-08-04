class Usuario < ActiveRecord::Base
	
	before_validation :strip_spaces
	before_create :criar_remember_token
  before_create :get_gravatar_img_src

	validates_presence_of :password, message: "deve estar preenchido", :on => :create

	validates :password, length: { minimum: 6, message: "deve conter no mínimo 6 caracteres!" },
                     	 :if => lambda{ new_record? || !password.nil? }

	validates_presence_of :username, :email, message: "deve estar preenchido!", on: :create
	
	validates_uniqueness_of :username, :email, message: "já cadastrado!"

	validates_size_of :primeiro_nome, :maximum => 50, message: "deve conter no máximo 50 caracteres!"
	validates_size_of :ultimo_nome, :maximum => 50, message: "deve conter no máximo 50 caracteres!"
	validates_size_of :username, :minimum => 4, :maximum => 50, message: "deve conter no mínimo 4 caracteres e máximo 50 caracteres!"
	validates_size_of :email, :maximum => 50, message: "deve conter no máximo 50 caracteres!"

	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "formato invalido!" 

  has_secure_password

	# Relação da Tabela
	has_many :comentarios, dependent: :destroy
	has_many :avaliacoes, dependent: :destroy
  has_many :itens, through: :avaliacoes
  has_many :flags, dependent: :destroy
  # Seguidores
  has_many :relacoes, foreign_key: "seguidor_id", dependent: :destroy
  has_many :seguindo, through: :relacoes, source: :seguido
  has_many :reversa_relacoes, foreign_key: "seguido_id",
                                   class_name:  "Relacao",
                                   dependent:   :destroy
  has_many :seguidores, through: :reversa_relacoes, source: :seguidor

  #-------------------------- 
  #-                        -
  #-    Métodos Estáticos   -
  #-                        -
  #--------------------------

	def Usuario.novo_remember_token
	    SecureRandom.urlsafe_base64
	end

	def Usuario.digest(token)
	    Digest::SHA1.hexdigest(token.to_s)
	end

  def Usuario.from_omniauth(auth)
		where(auth.slice(:provider, :uid)).first_or_initialize.tap do |usuario|
      usuario.provider         = auth.provider
      usuario.uid              = auth.uid
      usuario.email           ||= auth.info.email
      usuario.username         = (auth.info.first_name + "." + auth.info.last_name).downcase
      usuario.primeiro_nome    = auth.info.first_name
    	usuario.ultimo_nome      = auth.info.last_name
    	usuario.image            = "http://graph.facebook.com/#{auth.uid}/picture?type=large"
    	usuario.sexo             = auth.extra.raw_info.gender == "male" ? 'M' : 'F'
      usuario.oauth_token      = auth.credentials.token
      usuario.oauth_expires_at = Time.at(auth.credentials.expires_at)
      usuario.save(perform_validation: false)
      return usuario
	  end
  end

  def Usuario.update_descricao
    require 'rubygems'
    require 'nokogiri'
    require 'open-uri'
    require 'uri'

    itens = Item.all
    itens.each do |item| 

      begin 

        texto = String.new
        product = String.new

        product = item.nome_ptbr.split.map{ |x| x.capitalize }.join('_')

        page = Nokogiri::HTML(open("http://pt.wikipedia.org/wiki/" + product ))

        for i in (0..3)
          if page.css('div#mw-content-text p')[i]

            info = page.css('div#mw-content-text p')[i].text

            texto += info

          end
        end

        if !texto.include? "podem referir-se a"
          if item.descricao.nil?
            # Faz o update dos atributos
            item.update_attribute("descricao", texto)
          end
        end

      rescue OpenURI::HTTPError => e

        if e.message == '404 Not Found'
          nil
        end

      end

    end

  end

  #-------------------------- 
  #-                        -
  #-    Métodos Publicos    -
  #-                        -
  #--------------------------

  def get_recommendations()

    itens = (Item.all - self.itens) # Todos os itens menos os itens do usuário

    recommendations = Hash.new
    itens.each do |item|
      recommendations[item.id] = predicao_para(item)
    end
    return recommendations
  end

  def facebook_update


    lista_final = Array.new
    @graph = Koala::Facebook::API.new( self.oauth_token )
    start_t = Time.now

    #@fb_user = @graph.get_objects( self.uid )
    lista_facebook =  get_lista( "me", "music" ).dup
    lista_facebook += get_lista( "me", "books" ).dup
    lista_facebook += get_lista( "me", "movies" ).dup
    lista_facebook += get_lista( "me", "games" ).dup

    lista_interna = Item.all

    lista_final = get_matched_list( lista_interna, lista_facebook ).dup

    adiciona_avaliacoes( lista_final, self)

    finish_t = Time.now
    puts "Tempo para realizar todo o processo: " + (finish_t - start_t).to_s + "segundos"

  end

  def get_image
    self.image || no_pic_url()
  end

  def get_name
    self.username || self.primeiro_nome + " " + self.ultimo_nome
  end

  def seguindo?(usuario)
    self.relacoes.find_by(seguidor_id: self.id, seguido: usuario.id)
  end

  def seguir!(usuario)
    self.relacoes.create!(seguido_id: usuario.id)
  end

  def unfollow!(usuario)
    self.relacoes.find_by(seguidor_id: self.id, seguido_id: usuario.id).destroy
  end

  # Retorna o numero de Likes
  def likes
    self.avaliacoes.where( avaliacao: true )
  end

  # Retorna o numero de Dislikes
  def dislikes
    self.avaliacoes.where( avaliacao: false )
  end

  def num_avaliacoes
    return self.avaliacoes.size
  end

  #-------------------------- 
  #-                        -
  #-    Métodos Privados    -
  #-                        -
  #--------------------------
  
	private

    def predicao_para(item)
      hive_mind_sum = 0.0
      rated_by = item.liked_by.size + item.disliked_by.size

      item.liked_by.each { |user| hive_mind_sum += similaridade_com(user) }
      item.disliked_by.each { |user| hive_mind_sum -= similaridade_com(user) }

      puts("Hived_mind_sum: " + hive_mind_sum.to_s + "- Rated_by:" + rated_by.to_s)

      return -1.0 if rated_by.zero?

      return hive_mind_sum / rated_by.to_f

    end

    def similaridade_com(user)
      # Array is the set intersection operator.
      agreements = (self.likes & user.likes).size
      agreements += (self.dislikes & user.dislikes).size

      disagreements = (self.likes & user.dislikes).size
      disagreements += (self.dislikes & user.likes).size

      # Array#| is the set union operator
      total = (self.likes + self.dislikes) | (user.likes + user.dislikes)

      return (agreements - disagreements) / total.size.to_f
    end

    def no_pic_url
      "http://ieee-sb.ca/sites/default/files/default_user.jpg"
    end

		# Como parte do Login, foi criado uma função que cria um token assim que o usuário se logar
		def criar_remember_token
	  	self.remember_token = Usuario.digest( Usuario.novo_remember_token )
		end

    # Pega URL da Imagem do Gravatar
    def get_gravatar_img_src
      # Não usa facebook
      if self.uid.nil? then
        # include MD5 gem, should be part of standard ruby install
        require 'digest/md5'

        # create the md5 hash
        hash = Digest::MD5.hexdigest(self.email.downcase)
         
        # compile URL which can be used in <img src="RIGHT_HERE"...
        self.image = "http://www.gravatar.com/avatar/#{hash}"
      end
    end

		# Retirar Espaços
		def strip_spaces
			self.email = email.strip if attribute_present?("email")
			self.username = username.strip if attribute_present?("username")
		end

		def get_lista(who, what)
      array = Array.new
      n = 0
      array.insert(n, @graph.get_connections(who, what))
      while !array.at(n).nil? do
        n += 1
        array.insert(n, array.at(n-1).next_page)
      end
      return array
    end

    def get_matched_list lista_interna, lista_facebook
      list = Array.new

      lista_interna.each do |item_interno|
        lista_facebook.try(:each) do |objeto_face|
          objeto_face.try(:each) do |f|
            if (item_interno.nome_ptbr.try(:downcase).try(:include?, f["name"].downcase)) || (item_interno.nome_en.try(:downcase).try(:include?, f["name"].downcase))
              list.push(item_interno)
            end
          end
        end
      end
      return list
    end

    def adiciona_avaliacoes lista_itens, usuario
      lista_itens.each do |item|
      	avaliacao = usuario.avaliacoes.build({item_id: item.id, avaliacao: true})
      	begin
        	avaliacao.save
      	rescue Exception => e
        	if e.is_a? ActiveRecord::RecordNotUnique
          Rails.logger.warn(e)
        	end
      	end
    	end
  	end

end
