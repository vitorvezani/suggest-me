class InsertsIniciais < ActiveRecord::Migration
  def change
  	 # Categorias
  	 Categoria.create descricao: 'Jogos'
  	 Categoria.create descricao: 'Livros'
  	 Categoria.create descricao: 'Bandas'
  	 Categoria.create descricao: 'Filmes'
  	 # Generos
  	  # Genéricos
  	   Genero.create descricao: 'Outros'
  	 	# Filmes
	  	 Genero.create descricao: 'Ação'
	  	 Genero.create descricao: 'Aventura'
	  	 Genero.create descricao: 'Comédia'
	  	 Genero.create descricao: 'Crime/Gangster'
	  	 Genero.create descricao: 'Drama'
	  	 Genero.create descricao: 'Épico/Historico'
	  	 Genero.create descricao: 'Horror'
	  	 Genero.create descricao: 'Musicals/Dance'
	  	 Genero.create descricao: 'Ficção cientifica'
	  	 Genero.create descricao: 'Guerra'
	  	 Genero.create descricao: 'Faroeste'
	  	# Musicas
	  	 # Internacionais
		  	 Genero.create descricao: 'Africano'
		  	 Genero.create descricao: 'Asiatico'
		  	 Genero.create descricao: 'J-pop'
		  	 Genero.create descricao: 'Blues'
		  	 Genero.create descricao: 'Jazz'
		  	 Genero.create descricao: 'Country'
		  	 Genero.create descricao: 'Eletronico'
		  	 Genero.create descricao: 'Folk'
		  	 Genero.create descricao: 'HipHop'
		  	 Genero.create descricao: 'Pop'
		  	 Genero.create descricao: 'Rock'
		  	 # Brasileiros
		  	 Genero.create descricao: 'Axé'
		  	 Genero.create descricao: 'Bossa Nova'
		  	 Genero.create descricao: 'Forró'
		  	 Genero.create descricao: 'MPB'
		  	 Genero.create descricao: 'Sertanejo'
		  	 Genero.create descricao: 'Pagode'
		  	 Genero.create descricao: 'Samba'
  	 # Jogos
  	 	Genero.create descricao: 'Plataforma'
  	 	Genero.create descricao: 'Luta'
  	 	Genero.create descricao: 'Shooter'
  	 	Genero.create descricao: 'Arcade'
  	 	Genero.create descricao: 'Corrida'
  	 	Genero.create descricao: 'Stealth'
  	 	Genero.create descricao: 'RPG'
  	 	Genero.create descricao: 'Estratégia'
  	 	Genero.create descricao: 'Esporte'
  	 	Genero.create descricao: 'Adulto'
  	 	# Livros
  	 	Genero.create descricao: 'Romance'
  	 	Genero.create descricao: 'História/Bibliografia'
  	 	Genero.create descricao: 'Religião'
  	 	Genero.create descricao: 'Auto Ajuda'
  end
end
