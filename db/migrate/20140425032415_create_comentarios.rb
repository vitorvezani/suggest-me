class CreateComentarios < ActiveRecord::Migration
  def up
    create_table :comentarios do |t|
 	  t.column "id_usuario", 	:int
	  t.column "id_item", 		:int
	  t.column "comentario", 	:string, limit: 500, null: false
	  t.column "like", 		    :int, default: 0
	  t.column "dislike", 		:int, default: 0

      t.timestamps
    end
  end
end
