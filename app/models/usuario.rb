class Usuario < ActiveRecord::Base
	
	validates_presence_of :username, :email, :senha, message: "deve ser preenchido!"

	validates_uniqueness_of :username, :email, message: "já cadastrado!"

	validates_size_of :primeiro_nome, :maximum => 50, message: "máximo 50 caracteres!"
	validates_size_of :ultimo_nome, :maximum => 50, message: "máximo 50 caracteres!"
	validates_size_of :username, :minimum => 4, :maximum => 50, message: "mínimo 4 caracteres, máximo 50 caracteres!"
	validates_size_of :sexo	, :maximum => 1
	validates_size_of :email, :maximum => 50, message: "máximo 50 caracteres!"
	validates_size_of :senha, :minimum => 8, :maximum => 40, message: "mínimo 8 caracteres, máximo 40 caracteres!"
	validates_size_of :role, :maximum => 10, message: "máximo 10 caracteres!"

	validate :validate_email

	has_many :comentarios
	has_many :avaliacoes

	# Metodos Proprios
	private
	
  	def validate_email
    	errors.add :email, 'Invalid email' unless email =~ /@/
  	end

end
