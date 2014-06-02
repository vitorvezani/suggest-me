class Usuario < ActiveRecord::Base
	
	before_validation :strip_spaces

	before_create :criar_remember_token

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
	has_many :comentarios, :dependent => :destroy
	has_many :avaliacoes, :dependent => :destroy

	# Metodos Estaticos
	def Usuario.novo_remember_token
	    SecureRandom.urlsafe_base64
	end

	def Usuario.digest(token)
	    Digest::SHA1.hexdigest(token.to_s)
	end

  def Usuario.from_omniauth(auth)
		where(auth.slice(:provider, :uid)).first_or_initialize.tap do |usuario|
      usuario.provider = auth.provider
      usuario.uid = auth.uid
      usuario.email ||= auth.info.email
      usuario.username = (auth.info.first_name + "." + auth.info.last_name).downcase
      usuario.primeiro_nome = auth.info.first_name
    	usuario.ultimo_nome = auth.info.last_name
    	usuario.image = auth.info.image
    	usuario.sexo = auth.extra.raw_info.gender == "male" ? 'M' : 'F'
      usuario.oauth_token = auth.credentials.token
      usuario.oauth_expires_at = Time.at(auth.credentials.expires_at)
      usuario.save(perform_validation: false)
      return usuario
	  end
  end

  def self.no_pic_url
    "http://ieee-sb.ca/sites/default/files/default_user.jpg"
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

	private

		# Como parte do Login, foi criado uma função que cria um token assim que o usuário se logar
		def criar_remember_token
	  	self.remember_token = Usuario.digest( Usuario.novo_remember_token )
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
