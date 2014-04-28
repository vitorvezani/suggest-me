class Usuario < ActiveRecord::Base
	
	has_secure_password
	before_save { email.downcase! }

	validates_presence_of :username, :email, :password, message: "deve estar preenchido!"

	validates_uniqueness_of :username, :email, message: "já cadastrado!"

	validates_size_of :primeiro_nome, :maximum => 50, message: "deve conter no máximo 50 caracteres!"
	validates_size_of :ultimo_nome, :maximum => 50, message: "deve conter no máximo 50 caracteres!"
	validates_size_of :username, :minimum => 4, :maximum => 50, message: "deve conter no mínimo 4 caracteres e máximo 50 caracteres!"
	validates_size_of :sexo	, :maximum => 1
	validates_size_of :email, :maximum => 50, message: "deve conter no máximo 50 caracteres!"
	validates_size_of :password, :minimum => 6, message: "deve conter no mínimo 6 caracteres!"
	validates_size_of :role, :maximum => 10, message: "deve conter no máximo 10 caracteres!"

	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "formato invalido!" 

	has_many :comentarios
	has_many :avaliacoes

end
