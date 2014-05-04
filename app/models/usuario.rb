class Usuario < ActiveRecord::Base
	
	before_create :criar_remember_token

	has_secure_password on: :create

	validates_presence_of :username, :email, :password, message: "deve estar preenchido!", on: :create

	validates_uniqueness_of :username, :email, message: "já cadastrado!"

	validates_size_of :primeiro_nome, :maximum => 50, message: "deve conter no máximo 50 caracteres!"
	validates_size_of :ultimo_nome, :maximum => 50, message: "deve conter no máximo 50 caracteres!"
	validates_size_of :username, :minimum => 4, :maximum => 50, message: "deve conter no mínimo 4 caracteres e máximo 50 caracteres!"
	validates_size_of :email, :maximum => 50, message: "deve conter no máximo 50 caracteres!"
	validates_size_of :password, :minimum => 6, message: "deve conter no mínimo 6 caracteres!", on: :create

	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "formato invalido!" 

	# Relação da Tabela
	has_many :comentarios
	has_many :avaliacoes

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
      usuario.username ||= (auth.info.first_name + "." + auth.info.last_name).downcase
      usuario.primeiro_nome ||= auth.info.first_name
    	usuario.ultimo_nome ||= auth.info.last_name
    	usuario.image = auth.info.image
    	usuario.sexo ||= auth.extra.raw_info.gender == "male" ? 'M' : 'F'
      usuario.oauth_token = auth.credentials.token
      usuario.oauth_expires_at = Time.at(auth.credentials.expires_at)
      usuario.save(perform_validation: false)
      return usuario
	  end
  end

	private

		# Como parte do Login, foi criado uma função que cria um token assim que o usuário se logar
		def criar_remember_token
	  	self.remember_token = Usuario.digest(Usuario.novo_remember_token)
		end

end
