class CreateAvaliacoes < ActiveRecord::Migration
  def up
    create_table :avaliacoes do |t|
	  t.column "id_item", 	:int
	  t.column "id_user", 	:int
	  t.column "id_tipo_avaliacao", :string
      t.timestamps
    
    end
  end
end
