class Usuario < ActiveRecord::Base
	
	before_create :criar_remember_token
	before_save { email.downcase! }

	has_secure_password

	validates_presence_of :username, :email, :password, message: "deve estar preenchido!", on: :create

	validates_uniqueness_of :username, :email, message: "já cadastrado!"

	validates_size_of :primeiro_nome, :maximum => 50, message: "deve conter no máximo 50 caracteres!"
	validates_size_of :ultimo_nome, :maximum => 50, message: "deve conter no máximo 50 caracteres!"
	validates_size_of :username, :minimum => 4, :maximum => 50, message: "deve conter no mínimo 4 caracteres e máximo 50 caracteres!"
	validates_size_of :sexo	, :maximum => 1
	validates_size_of :email, :maximum => 50, message: "deve conter no máximo 50 caracteres!"
	validates_size_of :password, :minimum => 6, message: "deve conter no mínimo 6 caracteres!", on: :create
	validates_size_of :admin, :maximum => 1, message: "deve conter no máximo 1 caracteres!"

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

	private

	# Como parte do Login, foi criado uma função que cria um token assim que o usuário se logar
  	def criar_remember_token
    	self.remember_token = Usuario.digest(Usuario.novo_remember_token)
  	end

end
