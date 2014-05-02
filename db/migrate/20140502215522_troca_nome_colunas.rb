class TrocaNomeColunas < ActiveRecord::Migration
  def change
  	rename_column :avaliacoes, :id_usuario,  :usuario_id
  	rename_column :avaliacoes, :id_item,     :item_id
  	rename_column :comentarios, :id_usuario, :usuario_id
  	rename_column :comentarios, :id_item, 	 :item_id
  	rename_column :itens, :id_usuario, :usuario_id
  	rename_column :itens, :id_categoria, :categoria_id
  	rename_column :rel_generos_itens, :id_item, :item_id
  	rename_column :rel_generos_itens, :id_genero, :genero_id
  end
end
