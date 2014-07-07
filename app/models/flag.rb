class Flag < ActiveRecord::Base

	belongs_to :usuario
	belongs_to :tipo_flag
	
	# Associação polimorfica para deixar o item e genero recebendo flags
	belongs_to :flagavel, polymorphic: true

	validates_presence_of :conteudo, message: "deve ser preenchido!"

end
