class CreateRelacoes < ActiveRecord::Migration
  def change
    create_table :relacoes do |t|
      t.integer :seguidor_id
      t.integer :seguido_id

      t.timestamps
    end
    add_index :relacoes, :seguidor_id
    add_index :relacoes, :seguido_id
    add_index :relacoes, [:seguidor_id, :seguido_id], unique: true
  end
end
