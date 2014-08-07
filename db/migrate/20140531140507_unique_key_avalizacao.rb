class UniqueKeyAvalizacao < ActiveRecord::Migration
  def change
  	add_index :avaliacoes, [:usuario_id, :item_id], unique: true
  end
end
