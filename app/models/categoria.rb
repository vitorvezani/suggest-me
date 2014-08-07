class Categoria < ActiveRecord::Base
	
	before_validation :strip_spaces

	validates_presence_of :descricao, message: "deve ser preenchido!"
	
	validates_uniqueness_of :descricao, message: "já cadastrado!"

	has_many :itens

#-------------------------- 
#-                        -
#-    Métodos Privados    -
#-                        -
#--------------------------

private

	def strip_spaces
		self.descricao = descricao.strip if attribute_present?("descricao")
	end

end
