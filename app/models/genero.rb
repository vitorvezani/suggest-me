class Genero < ActiveRecord::Base
	
	before_validation :strip_spaces

	validates_presence_of :nome, message: "deve ser preenchido!"
	validates_uniqueness_of :nome, message: "já cadastrado!"

	has_many :generalizacoes
	has_many :itens, through: :generalizacoes

private
	def strip_spaces
		self.nome = nome.strip if attribute_present?("nome")
	end

end
