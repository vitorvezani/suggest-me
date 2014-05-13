class CreateUsuarios < ActiveRecord::Migration
  def up
    create_table :usuarios do |t|
	 t.column "primeiro_nome", 	:string, limit: 50
	 t.column "ultimo_nome", 	:string, limit: 50
	 t.column "username", 		:string, limit: 50, unique: true, null: false
	 t.column "dt_aniversario", :date
	 t.column "sexo", 			:string, limit: 1
	 t.column "email", 			:string, limit: 50, unique: true, null: false
	 t.column "senha", 			:string, limit: 40, unique: true, null: false
	 t.column "role", 			:string

     t.timestamps
    end
  end

def down
	drop_table :usuarios
end

end
