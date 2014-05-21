class AdicionandoUniqueKeyItens < ActiveRecord::Migration
  def change
  	# Unique key dos itens
    add_index :itens, ["categoria_id", "nome_ptbr"], :unique => true
    add_index :itens, ["categoria_id", "nome_en"], :unique => true
  end
end
