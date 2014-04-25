class CreateItens < ActiveRecord::Migration
  def up
    create_table :itens do |t|

 	  t.column "id_usuario", 	:int
	  t.column "id_categoria", 	:int
	  t.column "nome_ptbr", 	:string, limit: 100
	  t.column "nome_en", 		:string, limit: 100
	  t.column "descricao", 	:string
	  t.column "wiki_link",   	:string, limit: 400

      t.timestamps
    end
  end
end
