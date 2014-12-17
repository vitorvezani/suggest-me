# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Randomização

pg = Random.new(50)

2000.times do |i|
	name = Faker::Name.first_name
	pass = Faker::Internet.password(8)
  Usuario.create( primeiro_nome: name,
							    ultimo_nome: Faker::Name.last_name,
							    username: Faker::Internet.user_name(name),
							    dt_aniversario: pg.rand(10...50).years.ago,
							    sexo: ['S', 'N'].shuffle.first,
							    email: Faker::Internet.email,
							    password_digest: nil,
							    password: pass,
							    password_confirmation: pass, 
							    admin: false,
							    remember_token: nil,
							    provider: nil,
							    uid: nil,
							    oauth_token: nil,
							    oauth_expires_at: nil,
							    image: nil)
end

item_all = Item.all.size
pg = Random.new(item_all)

4.times do |i|
	Usuario.all.each do |i|
		begin
		  Avaliacao.create( item_id: pg.rand(0...item_all),
												usuario_id: i.id,
												avaliacao: [true, true, true, false].shuffle.first )
		rescue Exception => e
		end
	end
end

item_all = Item.all.size
pg = Random.new(item_all)

6.times do |i|
	Usuario.all.each do |i|
		begin
		  Comentario.create( item_id: pg.rand(0...item_all),
												 usuario_id: i.id,
												 comentario: Faker::Lorem.paragraph )
		rescue Exception => e
		end
	end
end

item_all = Item.all.count
genero_all = Genero.all.count
pg = Random.new(item_all)
gg = Random.new(genero_all)

16000.times do |i|
	begin
	  Generalizacao.create( item_id: pg.rand(0...item_all),
													genero_id: gg.rand(0...genero_all))
	rescue Exception => e
	end
end

Avaliacao.all.each { |a| a.destroy if a.usuario.nil? or a.item.nil?}
Generalizacao.all.each { |g| g.destroy if g.item.nil? or a.genero.nil? }

