class Genero < ActiveRecord::Base
	
	validates_presence_of :nome, message: "deve ser preenchido!"
	validates_uniqueness_of :nome, message: "já cadastrado!"

	has_and_belongs_to_many :itens

end
