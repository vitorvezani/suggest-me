class Categoria < ActiveRecord::Base
	
	validates_presence_of :descricao, message: "deve ser preenchido!"
	
	validates_uniqueness_of :descricao, message: "já cadastrado!"

	has_and_belongs_to_many :itens
	
end
