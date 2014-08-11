module ItensHelper

	def formata_str_parecidos(item)
		if item.is_film
			"Filmes"
		elsif item.is_game
			"Jogos"
		elsif item.is_music
			"Artistas"
		elsif item.is_book
			"Livros"
		end
	end

	def get_label_type(item)

		if item.categoria_id == 1
      "label label-primary"
    elsif item.categoria_id == 2
      "label label-success"
    elsif item.categoria_id == 3
      "label label-info"
    elsif item.categoria_id == 4
      "label label-warning"
    end
	end
end
