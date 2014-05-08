class SenhaUniqueFalse < ActiveRecord::Migration
  def change
  	change_column(:usuarios, "senha", "string", {limit: 40, unique: false, null: false})
  	execute "ALTER TABLE `itens` ADD UNIQUE `page_id_nome_ptbr_id_categoria` (`nome_ptbr`,`id_categoria`)"
  	execute "ALTER TABLE `itens` ADD UNIQUE `page_id_nome_en_id_categoria` (`nome_en`,`id_categoria`)"
  end
end
