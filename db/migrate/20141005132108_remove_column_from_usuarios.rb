class RemoveColumnFromUsuarios < ActiveRecord::Migration
  def change
  	remove_index(:itens, :name => 'index_itens_on_categoria_id_and_nome_en')
  end
end
