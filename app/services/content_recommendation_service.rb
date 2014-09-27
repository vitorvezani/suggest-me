class ContentRecommendationService

	def initialize(item)

		@item = item
	  @itens = Item.all.includes(:generalizacoes)

	end

	def recommend

  	similaridade = Hash.new
  	itens_recomendados = Hash.new

  	data = format_data

		tf_idf = TfIdf.new(data).tf_idf

		@itens.each do |item|
			similaridade[item.id] = similaridade_com(item, tf_idf)
		end

		similaridade = similaridade.sort_by { |id, nota| nota }.reverse.take(10)

    	similaridade.each { |id, nota| itens_recomendados[id] = nota if nota > 0 and id != @item.id}

		return itens_recomendados

  end

  private

		def format_data
			data = Array.new
			@itens.each do |item|
				aux = Array.new 
				item.generalizacoes.each do |generalizacao| 
			  	aux << generalizacao.genero_id
				end
				data[item.id - 1] = aux
			end
			data.map {|d| d.nil? ? Array.new : d}
		end

	  def similaridade_com(item, tf_idf)

	  	my_terms = tf_idf[@item.id - 1]
	  	itens_terms = tf_idf[item.id - 1]

	  	soma = 0.0

	  	my_terms.each do |k, v|
	  		soma += v.to_f * itens_terms[k].to_f
	  	end

	  	sim = soma / my_terms.size

	  	sim.nan? ? 0 : sim

	  end
end