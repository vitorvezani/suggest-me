class Item < ActiveRecord::Base

	# Escopo para trazer registros
	default_scope -> { order('nome_ptbr') }

	validates_size_of :nome_ptbr, :nome_en, :maximum => 100, message: "máximo 100 caracteres!"
	validates_size_of :nome_en, :maximum => 400, message: "máximo 400 caracteres!"

	has_many :comentarios
	has_many :avaliacoes 
	has_and_belongs_to_many :generos
	belongs_to :categoria

	def get_name
		self.nome_ptbr || self.nome_en
	end

end
