module ItensHelper

	def formata_str_parecidos(item)
		if item.film?
			"Filmes"
		elsif item.game?
			"Jogos"
		elsif item.music?
			"Artistas"
		elsif item.book?
			"Livros"
		end
	end

	def label_type(item)

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
