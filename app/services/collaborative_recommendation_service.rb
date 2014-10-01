class CollaborativeRecommendationService

	def initialize(usuario)
		
		@usuario = usuario

		@itens = Item.all - @usuario.itens

		avaliacoes = Avaliacao.all
		avaliacoes_positivas = Avaliacao.where(avaliacao: true)
		avaliacoes_negativas = Avaliacao.where(avaliacao: false)

		@liked_what = Hash.new
		@liked_by = Hash.new

		avaliacoes.each { |u| @liked_what[u.usuario_id] = Array.new }
		@disliked_what = @liked_what.deep_dup

		avaliacoes.each { |a| @liked_by[a.item_id] = Array.new }
		@disliked_by = @liked_by.deep_dup

		avaliacoes_positivas.each do |a|
			@liked_what[a.usuario_id] << a.item_id
			@liked_by[a.item_id] << a.usuario_id
		end

		avaliacoes_negativas.each do |a|
			@disliked_what[a.usuario_id] << a.item_id
			@disliked_by[a.item_id] << a.usuario_id
		end

	 	@similaridade = Array.new
	 	# Para cada key
	  @liked_what.each { |k, v| @similaridade[k] = similaridade_com(k) }

	end

	def recommend
		
	  start_t = Time.now

	  recommendations = Hash.new

	  @itens.each do |item|
	    recommendations[item.id] = predicao_para(item.id)
	  end

	  stop_t = Time.now
	  #puts "Tempo para realizar a recomendacao: " + (stop_t - start_t).to_s + "segundos"
	      
	  recommendations

	end

	private

		def predicao_para(item_id)

	    soma = 0.0

	    liked_by_usuarios = @liked_by[item_id].nil? ? Array.new : @liked_by[item_id]
	    disliked_by_usuarios = @disliked_by[item_id].nil? ? Array.new : @disliked_by[item_id]

	    puts "liked_by_usuarios: #{liked_by_usuarios.inspect}, disliked_by_usuarios: #{disliked_by_usuarios.inspect}"

	    # Soma total de likes e dislikes
	    rated_count = liked_by_usuarios.size + disliked_by_usuarios.size

	    liked_by_usuarios.each { |usuario_id| soma += @similaridade[usuario_id] }
	    disliked_by_usuarios.each { |usuario_id| soma -= @similaridade[usuario_id] }

	    return -1.0 if rated_count.zero?

	    puts "Predicao para #{item_id}, soma: #{soma}, rated: #{rated_count}"

	    return soma / rated_count.to_f

	  end

	  def similaridade_com(usuario_id)

	    # '& é o operador de intersecção.
	    agreements = (@liked_what[@usuario.id] & @liked_what[usuario_id]).size
	    agreements += (@disliked_what[@usuario.id] & @disliked_what[usuario_id]).size

	    disagreements = (@liked_what[@usuario.id] & @disliked_what[usuario_id]).size
	    disagreements += (@disliked_what[@usuario.id] & @liked_what[usuario_id]).size

	    # '|' é o operador de união
	    total = (@liked_what[@usuario.id] + @disliked_what[@usuario.id]) | (@liked_what[usuario_id] + @disliked_what[usuario_id])

	    puts "Similaridade com usaurio: #{@usuario.id}, agreements: #{agreements}, disagreements: #{disagreements}, total: #{total.size.to_f}, similaridade: #{(agreements - disagreements) / total.size.to_f}"

	    return (agreements - disagreements) / total.size.to_f
	  end
end