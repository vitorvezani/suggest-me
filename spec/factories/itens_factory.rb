FactoryGirl.define do
	#Item.create nome_ptbr: 'Los Hermanos', categoria_id: 3
	factory :musica, class: Item do
		nome_ptbr "Los Hermanos"
		association :categoria, factory: :musicas
	end

	factory :filme, class: Item do
		nome_ptbr "Os Boxtrolls"
		association :categoria, factory: :filmes
	end

		factory :jogo, class: Item do
		nome_ptbr "Los Hermanos"
		association :categoria, factory: :jogos
	end

	factory :livro, class: Item do
		nome_ptbr "Crime e Castigo"
		association :categoria, factory: :livros
	end
end