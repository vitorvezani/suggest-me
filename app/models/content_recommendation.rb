class ContentRecommendation

	def initialize(item)

		@item = item
  	@itens = Item.all.includes(:generalizacoes)

	end

	  def recommend

  	data = Array.new
  	similaridade = Hash.new
  	itens_recomendados = Hash.new

  	data = get_data

		tf_idf = TfIdf.new(data).tf_idf

		@itens.select{|m| m.id != @item.id }.each do |item|
			similaridade[item.id] = similaridade_com(tf_idf, item)
		end

		similaridade = similaridade.sort_by { |id, nota| nota }.reverse.take(10)

    similaridade.each { |id, nota| itens_recomendados[nota] = Item.find(id) if nota > 0 }

		return itens_recomendados

  end

  private

	def get_data
		data = Array.new
			@itens.each do |item|
			aux = Array.new 
			item.generalizacoes.each do |generalizacao| 
		  	aux << generalizacao.genero_id
			end
			data[item.id - 1] = aux
		end
		return data
	end

  def similaridade_com(tf_idf, item)

  	my_terms = tf_idf[@item.id - 1]
  	itens_terms = tf_idf[item.id - 1]

  	soma = 0.0

  	my_terms.each do |k, v|
  		soma += v.to_f * itens_terms[k].to_f
  	end

  	sim = soma / itens_terms.size

  	sim.nan? ? 0 : sim

  end
end