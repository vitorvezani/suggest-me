class Generalizacao < ActiveRecord::Base

  belongs_to :item
  belongs_to :genero

	validates_associated :item
	validates_associated :genero

end
