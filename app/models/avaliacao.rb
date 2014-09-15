class Avaliacao < ActiveRecord::Base

	belongs_to :usuario
	belongs_to :item

	validates_associated :usuario
	validates_associated :item
end
