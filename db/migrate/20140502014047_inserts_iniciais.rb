class InsertsIniciais < ActiveRecord::Migration
  def change
  	 # Categorias
  	 Categoria.create descricao: 'Jogos'
  	 Categoria.create descricao: 'Livros'
  	 Categoria.create descricao: 'Musicas'
  	 Categoria.create descricao: 'Filmes'
  	 # Generos
  	 	# Filmes
	  	 Genero.create nome: 'Ação'
	  	 Genero.create nome: 'Aventura'
	  	 Genero.create nome: 'Comédia'
	  	 Genero.create nome: 'Crime/Gangster'
	  	 Genero.create nome: 'Drama'
	  	 Genero.create nome: 'Épico/Historico'
	  	 Genero.create nome: 'Horror'
	  	 Genero.create nome: 'Musicals/Dance'
	  	 Genero.create nome: 'Ficção cientifica'
	  	 Genero.create nome: 'Guerra'
	  	 Genero.create nome: 'Faroeste'
	  	# Musicas
	  	 # Internacionais
		  	 Genero.create nome: 'Africano'
		  	 Genero.create nome: 'Asiatico'
		  	 Genero.create nome: 'J-pop'
		  	 Genero.create nome: 'Blues'
		  	 Genero.create nome: 'Jazz'
		  	 Genero.create nome: 'Country'
		  	 Genero.create nome: 'Eletronico'
		  	 Genero.create nome: 'Folk'
		  	 Genero.create nome: 'HipHop'
		  	 Genero.create nome: 'Pop'
		  	 Genero.create nome: 'Rock'
		  	 # Nacionais
		  	 Genero.create nome: 'Axé'
		  	 Genero.create nome: 'Bossa Nova'
		  	 Genero.create nome: 'Forró'
		  	 Genero.create nome: 'MPB'
		  	 Genero.create nome: 'Sertanejo'
		  	 Genero.create nome: 'Pagode'
		  	 Genero.create nome: 'Samba'
  	 # Jogos
  	 	Genero.create nome: 'Plataforma'
  	 	Genero.create nome: 'Luta'
  	 	Genero.create nome: 'Shooter'
  	 	Genero.create nome: 'Arcade'
  	 	Genero.create nome: 'Corrida'
  	 	Genero.create nome: 'Stealth'
  	 	Genero.create nome: 'RPG'
  	 	Genero.create nome: 'Estratégia'
  	 	Genero.create nome: 'Esporte'
  	 	Genero.create nome: 'Adulto'
  	 	# Livros
  	 	Genero.create nome: 'Romance'
  	 	Genero.create nome: 'História/Bibliografia'
  	 	Genero.create nome: 'Religião'
  	 	Genero.create nome: 'Auto Ajuda'
  end
end
