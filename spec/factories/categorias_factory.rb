FactoryGirl.define do
	#	Genero.create nome: 'Ação'
	factory :musicas, class: Categoria do
		descricao "Musicas"
	end

	factory :jogos, class: Categoria do
		descricao "Jogos"
	end
	
	factory :livros, class: Categoria do
		descricao "Livros"
	end

	factory :filmes, class: Categoria do
		descricao "Filmes"
	end
end