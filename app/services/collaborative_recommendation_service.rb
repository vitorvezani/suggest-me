class CollaborativeRecommendationService

	def initialize(usuario)
		
	  @usuario = usuario
	  @itens = Item.all - @usuario.itens # Todos os itens menos os itens do usuário
	  @usuarios = Usuario.where("id != ?", @usuario.id )

	  # Conjunto de itens de likes e dislikes do usuário
	  @self_likes = likes(@usuario)
	  @self_dislikes = dislikes(@usuario)

	 	@similaridade = Array.new
	  @usuarios.each { |outro_usuario| @similaridade[outro_usuario.id] = similaridade_com( outro_usuario ) }

	end

	def recommend
		
	  start_t = Time.now

	  recommendations = Hash.new

	  @itens.each do |item|
	    recommendations[item.id] = predicao_para(item)
	  end

	  stop_t = Time.now
	  puts "Tempo para realizar a recomendacao: " + (stop_t - start_t).to_s + "segundos"
	      
	  recommendations

	end

	private

		def predicao_para(item)

	    soma = 0.0

	    item_liked_by = liked_by(item)
	    item_disliked_by = disliked_by(item)
	    # Soma total de likes e dislikes
	    rated_count = item_liked_by.size + item_disliked_by.size

	    item_liked_by.each { |usuario_id| soma += @similaridade[usuario_id] }
	    item_disliked_by.each { |usuario_id| soma -= @similaridade[usuario_id] }

	    return -1.0 if rated_count.zero?

	    #puts "Predicao para #{item.get_name}, soma: #{soma}, rated: #{rated_count}"

	    return soma / rated_count.to_f

	  end

	  def similaridade_com(usuario)

	    usuario_likes = likes(usuario)
	    usuario_dislikes = dislikes(usuario)

	    # '& é o operador de intersecção.
	    agreements = (@self_likes & usuario_likes).size
	    agreements += (@self_dislikes & usuario_dislikes).size

	    disagreements = (@self_likes & usuario_dislikes).size
	    disagreements += (@self_dislikes & usuario_likes).size

	    # '|' é o operador de união
	    total = (@self_likes + @self_dislikes) | (usuario_likes + usuario_dislikes)

	    #puts "Similaridade com usaurio: #{usuario.id}, agreements: #{agreements}, disagreements: #{disagreements}, total: #{total.size.to_f}, similaridade: #{(agreements - disagreements) / total.size.to_f}"

	    return (agreements - disagreements) / total.size.to_f
	  end

		  # Retorna o numero de Likes
	  def likes(usuario)

	    #itens = Array.new
	    #self.avaliacoes.where( avaliacao: true ).includes(:item).each do |avaliacao|
	    #  itens << avaliacao.item
	    #end
	    #return itens

	    query = "SELECT av.item_id
	             FROM   avaliacoes av
	             WHERE  avaliacao = 1 and
	                    usuario_id = #{usuario.id}"
	    ActiveRecord::Base.connection.execute(query).to_a.map{|a| a.first}

	    #self.itens.joins(:avaliacoes).where("avaliacoes.avaliacao = ?", true)

	    #@avaliacoes.select{|m| m.avaliacao == true and m.usuario_id == usuario.id }

	  end

	  # Retorna o numero de Dislikes
	  def dislikes(usuario)

	    #itens = Array.new
	    #self.avaliacoes.where( avaliacao: false ).includes(:item).each do |avaliacao|
	    #  itens << avaliacao.item
	    #end
	    #return itens

	    query = "SELECT av.item_id
	             FROM   avaliacoes av
	             WHERE  avaliacao = 0 and
	                    usuario_id = #{usuario.id}"
	    ActiveRecord::Base.connection.execute(query).to_a.map{|a| a.first}
	    
	    #self.itens.joins(:avaliacoes).where("avaliacoes.avaliacao = ?", false)

	    #@avaliacoes.select{|m| m.avaliacao == false and m.usuario_id == usuario.id }

	  end

		def liked_by(item)

			#usuarios = Array.new
			#self.avaliacoes.where(avaliacao: true).includes(:usuario).each do |like|
		  #	usuarios << like.usuario unless like.usuario.blank?
		  #end
			#return usuarios

			query = "SELECT av.usuario_id
	             FROM   avaliacoes av
	             WHERE  avaliacao = 1 and
	                    item_id = #{item.id}"
	    ActiveRecord::Base.connection.execute(query).to_a.map{|a| a.first}

	    #@avaliacoes.select{|m| m.avaliacao == true and m.item_id == item.id }

		end

		def disliked_by(item)

			#usuarios = Array.new
			#self.avaliacoes.where(avaliacao: false).includes(:usuario).each do |dislike|
		  #  usuarios << dislike.usuario unless dislike.usuario.blank?
			#end 
			#return usuarios

			query = "SELECT av.usuario_id
	             FROM   avaliacoes av
	             WHERE  avaliacao = 0 and
	                    item_id = #{item.id}"
	    ActiveRecord::Base.connection.execute(query).to_a.map{|a| a.first}

	    #@avaliacoes.select{|m| m.avaliacao == false and m.item_id == item.id }

		end

end