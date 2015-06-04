class InsertsIniciais < ActiveRecord::Migration
  def change
		# Categorias
			Categoria.create descricao: 'Jogos'
			Categoria.create descricao: 'Livros'
			Categoria.create descricao: 'Musicas'
			Categoria.create descricao: 'Filmes'
  end
end
