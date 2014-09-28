class Item < ActiveRecord::Base

	before_validation :strip_spaces
	before_validation :format_name 
  before_save :gerar_link_wikipedia

	has_many :comentarios, dependent: :destroy
	has_many :avaliacoes, dependent: :destroy
	has_many :flags, as: :flagavel, dependent: :destroy
	
	has_many :generalizacoes, dependent: :destroy
	has_many :usuarios, through: :avaliacoes
	has_many :generos, through: :generalizacoes
	belongs_to :categoria

  searchable do
    text :nome_ptbr, :nome_en, boost: 5
    text :descricao
  end

	# Escopo para trazer registros
	scope :jogos,   -> { where(categoria_id: 1) }
	scope :livros,  -> { where(categoria_id: 2) }
	scope :musicas, -> { where(categoria_id: 3) }
	scope :filmes,  -> { where(categoria_id: 4) }

	validates_size_of :nome_ptbr, :nome_en, :maximum => 100, message: "máximo 100 caracteres!"

	# A validação acontece apenas de nome_ptbr/nome_en estiverem preenchidos
	validates_uniqueness_of :nome_ptbr, scope: :categoria_id, message: "já cadastrado!", :if => Proc.new { |obj| !obj.nome_ptbr.nil? }
  validates_uniqueness_of :nome_en, scope: :categoria_id, message: "já cadastrado!", :if => Proc.new { |obj| !obj.nome_en.nil? }

  #-------------------------- 
  #-                        -
  #-    Métodos Públicos    -
  #-                        -
  #--------------------------

	def get_image_url
		suckr = ImageSuckr::GoogleSuckr.new
		suckr.get_image_url({"q" => get_name, "safe" => "active"})
  end

  def before_save(record)
    if nome_en.nil? and nome_ptbr.nil?
    	record.errors.add(nome_en + " ou " + nome_ptbr, " devem estar preenchidos!")
    end
  end

	def get_name
		self.nome_ptbr || self.nome_en 	
	end

	def film?
	  self.categoria_id == 4 ? true : false
	end
	
	def game?
	  self.categoria_id == 1 ? true : false
	end
	
	def music?
	  self.categoria_id == 3 ? true : false
	end
	
	def book?
	  self.categoria_id == 2 ? true : false
	end

  #-------------------------- 
  #-                        -
  #-    Métodos Privados    -
  #-                        -
  #--------------------------

	private

		def strip_spaces
			self.nome_ptbr = nome_ptbr.squeeze.strip if attribute_present?("nome_ptbr")
			self.nome_en = nome_en.squeeze.strip if attribute_present?("nome_en")
		end

    def gerar_link_wikipedia
      nome_formatado = get_name.split.map{ |x| x.capitalize }.join('_')
      nome_formatado = Utils::remover_acentos(nome_formatado)
      self.wiki_link = "http://pt.wikipedia.org/wiki/" + nome_formatado
    end

    def format_name
    	self.nome_ptbr = self.nome_ptbr.downcase if attribute_present?("nome_ptbr")
    	self.nome_en = self.nome_en.downcase if attribute_present?("nome_en")
    end

end
