class Item < ActiveRecord::Base

	before_validation :strip_spaces
	
	has_many :comentarios, dependent: :destroy
	has_many :avaliacoes, dependent: :destroy
  has_many :usuarios, through: :avaliacoes
	has_many :flags, as: :flagavel, dependent: :destroy
	
	has_many :generalizacoes, dependent: :destroy
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

  def get_url
		# Imagem do Item
    suckr = ImageSuckr::GoogleSuckr.new
  	suckr.get_image_url ({"q" => self.get_name, "safe" => "active"})
  end

  def before_save(record)
    if nome_en.nil? and nome_ptbr.nil?
    	record.errors.add(nome_en + " ou " + nome_ptbr, " devem estar preenchidos!")
    end
  end

	def get_name
		self.nome_ptbr || self.nome_en || "default"
	end

	def liked_by
		usuarios = Array.new
		lista_likes = self.avaliacoes.where( avaliacao: true)
		lista_likes.each do |like|
			usuarios << like.usuario
		end
		return usuarios
	end

	def disliked_by
		usuarios = Array.new
		lista_likes = self.avaliacoes.where( avaliacao: false)
		lista_likes.each do |like|
			usuarios << like.usuario
		end 
		return usuarios
	end

	def is_film
	  self.categoria_id == 4 ? true : false
	end
	
	def is_game
	  self.categoria_id == 1 ? true : false
	end
	
	def is_music
	  self.categoria_id == 3 ? true : false
	end
	
	def is_book
	  self.categoria_id == 2 ? true : false
	end

	def itens_mesmo_genero
		if !self.generos.empty? then

		  # Pega o Hash{id_item, qtde_aparição} e faz o sort_by para o key
		  hash = self.generos.group("generos.id").count.sort_by {|key, value| value}.reverse

		  lista_itens_parecidos = Array.new 

		  hash.each do |key, value|
		  	itens_mesmo_genero_categoria = Genero.find(key).itens.where("itens.id != ? and categoria_id = ?", self.id, self.categoria_id)
		    itens_mesmo_genero_categoria.each do |item|
		      lista_itens_parecidos << item
		      break if lista_itens_parecidos.uniq.length > 20
		    end
		  end

		 lista_itens_parecidos.uniq.shuffle.take(5)

		end
	end

  #-------------------------- 
  #-                        -
  #-    Métodos Privados    -
  #-                        -
  #--------------------------

	private

		def strip_spaces
			self.nome_ptbr = nome_ptbr.strip if attribute_present?("nome_ptbr")
			self.nome_en = nome_en.strip if attribute_present?("nome_en")
		end

end
