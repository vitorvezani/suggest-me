class AddIndexConjuntoGeneralizacoes < ActiveRecord::Migration
  def change
  	add_index :generalizacoes, [:item_id, :genero_id]
  end
end
