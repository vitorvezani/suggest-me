class CreateFlags < ActiveRecord::Migration
  def change
    create_table :flags do |t|
      t.text    :conteudo
      t.integer :usuario_id
      t.integer :tipo_flag_id
      t.integer :flagavel_id
      t.string  :flagavel_type

      t.timestamps
    end
    add_index :flags, :tipo_flag_id
		add_index :flags, :usuario_id
    add_index :flags, :flagavel_type
    add_index :flags, :flagavel_id
  end
end
