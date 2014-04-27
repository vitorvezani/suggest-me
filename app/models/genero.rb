class Genero < ActiveRecord::Base
	
	validates_presence_of :descricao, message: "deve ser preenchido!"
	
	validates_uniqueness_of :descricao, message: "já cadastrado!"

	belongs_to :item

end
