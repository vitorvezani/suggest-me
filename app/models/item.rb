class Item < ActiveRecord::Base

	before_validation :strip_spaces

	# Escopo para trazer registros
	default_scope -> { order('nome_ptbr') }

	validates_size_of :nome_ptbr, :nome_en, :maximum => 100, message: "máximo 100 caracteres!"
	
	# A validação acontece apenas de nome_ptbr/nome_en estiverem preenchidos
	validates_uniqueness_of :nome_ptbr, scope: :categoria_id, message: "já cadastrado!", :if => Proc.new { |obj| !obj.nome_ptbr.nil? }
  validates_uniqueness_of :nome_en, scope: :categoria_id, message: "já cadastrado!", :if => Proc.new { |obj| !obj.nome_en.nil? }

	has_many :comentarios
	has_many :avaliacoes 

	has_many :generalizacoes
	has_many :generos, through: :generalizacoes

	belongs_to :categoria

  def before_save(record)
    if nome_en.nil? and nome_ptbr.nil?
    	record.errors.add(nome_en + "ou" + nome_ptbr, "devem estar preenchidos!")
    end
  end

	def get_name
		self.nome_ptbr || self.nome_en
	end

	private
		def strip_spaces
			self.nome_ptbr = nome_ptbr.strip if attribute_present?("nome_ptbr")
			self.nome_en = nome_en.strip if attribute_present?("nome_en")
		end

end
