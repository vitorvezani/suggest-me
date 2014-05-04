class RemoveIdUsuarioTabelaItens < ActiveRecord::Migration
  def change
  	remove_column :itens, :usuario_id
  end
end
