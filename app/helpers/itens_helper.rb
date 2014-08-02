module ItensHelper

	def formata_str_parecidos(item)
		if item.is_film
			return "Filmes"
		elsif item.is_game
			return "Jogos"
		elsif item.is_music
			return "Artistas"
		elsif item.is_book
			return "Livros"
		end
	end

end
