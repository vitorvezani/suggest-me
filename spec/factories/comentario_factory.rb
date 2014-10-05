FactoryGirl.define do
	#	Genero.create nome: 'Ação'
	factory :comentario do
		association :usuario, factory: :usuario
		association :item, factory: :musicas
		comentario "Esse jogo é muito massa!"
	end
end