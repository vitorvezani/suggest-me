class Genero < ActiveRecord::Base
	
	validates_presence_of :nome, message: "deve ser preenchido!"
	validates_uniqueness_of :nome, message: "já cadastrado!"

	has_many :generalizacoes
	has_many :itens, through: :generalizacoes

end
