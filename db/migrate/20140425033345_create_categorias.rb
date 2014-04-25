class CreateCategorias < ActiveRecord::Migration
  def up
    create_table :categorias do |t|

	  t.column "descricao", :string, limit: 50, unique: true
      t.timestamps
    end
  end
end
