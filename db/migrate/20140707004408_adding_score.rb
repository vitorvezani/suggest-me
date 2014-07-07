class AddingScore < ActiveRecord::Migration
  def change
    add_column :avaliacoes, :score, :integer, {default: 0}
  end
end
