class CreateGeneros < ActiveRecord::Migration
  def up
    create_table :generos do |t|
	    t.column "nome", :string, limit: 40, unique: true
		  t.column "descricao", :string, limit: 1000
      t.timestamps
    end
  end
end
