class Comentario < ActiveRecord::Base

	validates_presence_of :titulo, :comentario, :id_usuario, :id_item, message: "deve ser preenchido!"

	validates_associated :usuario, :item

	belongs_to :usuario
	belongs_to :item

end
