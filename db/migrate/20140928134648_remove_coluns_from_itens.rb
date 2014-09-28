class RemoveColunsFromItens < ActiveRecord::Migration
  def change
    remove_column :itens, :img_url, :string
    remove_column :avaliacoes, :score, :integer
  end
end
