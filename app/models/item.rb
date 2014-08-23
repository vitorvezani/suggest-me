class Item < ActiveRecord::Base

	before_validation :strip_spaces
	
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

  def get_img_url
		# Imagem do Item
		if self.img_url.nil? 
	    suckr = ImageSuckr::GoogleSuckr.new
	  	self.img_url = suckr.get_image_url({"q" => self.get_name, "safe" => "active"})
	  	self.save!
		end
		self.img_url
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
		self.avaliacoes.where( avaliacao: true).includes(:usuario).each do |like|
	  	usuarios << like.usuario unless like.usuario.blank?
	  end
		return usuarios
	end

	def disliked_by
		usuarios = Array.new
		self.avaliacoes.where( avaliacao: false).includes(:usuario).each do |dislike|
	    usuarios << dislike.usuario unless dislike.usuario.blank?
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

  def get_tf_idf_recommendations

  	data = Array.new
  	itens = Array.new

		Item.all.includes(:generos).each do |item|
			aux = Array.new 
			item.generos.each do |gen| 
				aux << gen.id
			end
			data << aux
		end

		tf_idf = TfIdf.new(data).tf_idf

		similaridade = Hash.new

		Item.where("id != ?", self.id).each do |item|
			similaridade[item.id] = similaridade_com(tf_idf, item)
		end

		similaridade = similaridade.sort_by { |id, nota| nota }.reverse.take(5)

    similaridade.each { |id, nota| itens << Item.find(id) if nota > 0 }

		return itens

  end

  def similaridade_com(tf_idf,item)

  	my_terms = tf_idf[self.id - 1]
  	itens_terms = tf_idf[item.id - 1]

  	soma = 0.0

  	my_terms.each do |k, v|
  		soma += v.to_f * itens_terms[k].to_f
  	end

  	sim = soma / itens_terms.size

  	sim.nan? ? 0 : sim

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
