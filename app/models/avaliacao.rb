class Avaliacao < ActiveRecord::Base

	validates_presence_of :id_tipo_avaliacao, :id_usuario, :id_item, message: "deve ser preenchido!"

	validates_associated :usuario, :item

	belongs_to :usuario
	belongs_to :item

end
