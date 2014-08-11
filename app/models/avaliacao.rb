class Avaliacao < ActiveRecord::Base

	belongs_to :usuario
	belongs_to :item

end
