class JoinTable < ActiveRecord::Migration
  def up
  	create_table :generos_itens, id: false do |t|
  	t.integer :id_item
  	t.integer :id_genero
  	end
  end
end
