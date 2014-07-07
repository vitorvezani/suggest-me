class CreateItens < ActiveRecord::Migration
  def up
    create_table :itens do |t|
	 	  t.column "id_usuario", 	 :int
		  t.column "categoria_id", :int
		  t.column "nome_ptbr", 	 :string, limit: 100
		  t.column "nome_en", 		 :string, limit: 100
		  t.column "descricao", 	 :string, limit: 15000
		  t.column "wiki_link",    :string, limit: 400
      t.timestamps
    end
  end
end
