class Avaliacao < ActiveRecord::Base

	validates_presence_of :usuario_id, :item_id, message: "deve ser preenchido!"

	belongs_to :usuario
	belongs_to :item

end
