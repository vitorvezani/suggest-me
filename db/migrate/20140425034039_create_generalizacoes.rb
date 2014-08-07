class CreateGeneralizacoes < ActiveRecord::Migration
  def up
  	create_table :generalizacoes do |t|
	  	t.integer :item_id
	  	t.integer :genero_id
	  	t.timestamps
  	end
  end
end
