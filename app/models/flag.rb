class Flag < ActiveRecord::Base
	belongs_to :usuario
	# Associação polimorfica para deixar o item e genero recebendo flags
	belongs_to :flagavel, polymorphic: true
end
