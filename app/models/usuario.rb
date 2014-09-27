class Usuario < ActiveRecord::Base

	before_validation :strip_spaces
	before_create :criar_remember_token
  before_create { generate_token(:confimartion_code) } 
  before_create :gravatar_img_src
  
  attr_accessor :self_likes, :self_dislikes

	validates_presence_of :password, message: "deve estar preenchido", :on => :create

	validates :password, length: { minimum: 6, message: "deve conter no mínimo 6 caracteres!" },
                     	 :if => lambda{ new_record? || !password.nil? }

	validates_presence_of :username, :email, message: "deve estar preenchido!", on: :create
	
	validates_uniqueness_of :username, :email, message: "já cadastrado!", on: :create

	validates_size_of :primeiro_nome, :maximum => 50, message: "deve conter no máximo 50 caracteres!"
	validates_size_of :ultimo_nome, :maximum => 50, message: "deve conter no máximo 50 caracteres!"
	validates_size_of :username, :minimum => 4, :maximum => 50, message: "deve conter no mínimo 4 caracteres e máximo 50 caracteres!"
	validates_size_of :email, :maximum => 50, message: "deve conter no máximo 50 caracteres!"

	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "com formato inválido!" 

  has_secure_password

	# Relação da Tabela
	has_many :comentarios, dependent: :destroy
	has_many :avaliacoes, dependent: :destroy
  has_many :flags, as: :flagavel, dependent: :destroy
  # Seguidores
  has_many :relacoes, foreign_key: "seguidor_id", dependent: :destroy
  has_many :seguindo, through: :relacoes, source: :seguido
  has_many :reversa_relacoes, foreign_key: "seguido_id",
                                   class_name:  "Relacao",
                                   dependent:   :destroy
  has_many :itens, through: :avaliacoes
  has_many :seguidores, through: :reversa_relacoes, source: :seguidor

  searchable do
    text :primeiro_nome, :ultimo_nome, :username, :email, boost: 5
    text :info
  end

  #-------------------------- 
  #-                        -
  #-    Métodos Estáticos   -
  #-                        -
  #--------------------------

	def self.novo_remember_token
	    SecureRandom.urlsafe_base64
	end

	def self.digest(token)
	    Digest::SHA1.hexdigest(token.to_s)
	end

  def self.from_omniauth(auth)
		self.where(auth.slice('provider', 'info.email')).first_or_initialize.tap do |usuario|
      usuario.provider         ||= auth.provider
      usuario.uid              ||= auth.uid
      usuario.email            ||= auth.info.email
      usuario.username         = "#{auth.info.first_name}.#{auth.info.last_name}"
      usuario.primeiro_nome    = auth.info.first_name
    	usuario.ultimo_nome      = auth.info.last_name
    	usuario.image            = "http://graph.facebook.com/#{auth.uid}/picture?type=large"
    	usuario.sexo             = auth.extra.raw_info.gender == "male" ? 'M' : 'F'
      usuario.oauth_token      = auth.credentials.token
      usuario.confirmed        = true
      usuario.oauth_expires_at = Time.at(auth.credentials.expires_at)
      usuario.save(perform_validation: false)
      return usuario
	  end
  end

  #-------------------------- 
  #-                        -
  #-    Métodos Publicos    -
  #-                        -
  #--------------------------

  def facebook_update

    @graph = Koala::Facebook::API.new( self.oauth_token )
    start_t = Time.now

    #@fb_user = @graph.objects( self.uid )
    lista_facebook =  list_of( "me", "music" ).dup
    lista_facebook += list_of( "me", "books" ).dup
    lista_facebook += list_of( "me", "movies" ).dup
    lista_facebook += list_of( "me", "games" ).dup

    lista_interna = Item.all

    lista_final = matched_list( lista_interna, lista_facebook ).dup

    adiciona_avaliacoes( lista_final, self)

    finish_t = Time.now
    puts "Tempo para realizar todo o processo: " + (finish_t - start_t).to_s + "segundos"

  end

  def get_name
    self.username || self.primeiro_nome + " " + self.ultimo_nome || self.email
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

  #-------------------------- 
  #-                        -
  #-    Métodos Privados    -
  #-                        -
  #--------------------------

  private

		# Como parte do Login, foi criado uma função que cria um token assim que o usuário se logar
		def criar_remember_token
	  	self.remember_token = Usuario.digest( Usuario.novo_remember_token )
		end

    # Pega URL da Imagem do Gravatar
    def gravatar_img_src
      # Não usa facebook
      if self.uid.nil?
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
			self.username = username.squeeze.strip if attribute_present?("username")
		end

		def list_of(who, what)
      array = Array.new
      n = 0
      array.insert(n, @graph.get_connections(who, what))
      while !array.at(n).nil? do
        n += 1
        array.insert(n, array.at(n-1).next_page)
      end
      return array
    end

    def matched_list(lista_interna, lista_facebook)
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

    def adiciona_avaliacoes(lista_itens, usuario)
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

    def generate_token(coluna)
      begin
        self[coluna] = SecureRandom.urlsafe_base64
      end while Usuario.exists?(coluna => self[coluna])
    end
end
