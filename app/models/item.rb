class Item < ActiveRecord::Base

	validates_size_of :nome_ptbr, :nome_en, :maximum => 100, message: "máximo 100 caracteres!"
	validates_size_of :nome_en, :maximum => 400, message: "máximo 400 caracteres!"

	has_many :comentarios
	has_many :avaliacoes 
	has_and_belongs_to_many :genero
	has_one :categoria

end
