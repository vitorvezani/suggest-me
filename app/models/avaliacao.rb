class Avaliacao < ActiveRecord::Base

	validates_presence_of :avaliacao, :usuario_id, :item_id, message: "deve ser preenchido!"

	validates_associated :usuario, :item

	belongs_to :usuario
	belongs_to :item

end
