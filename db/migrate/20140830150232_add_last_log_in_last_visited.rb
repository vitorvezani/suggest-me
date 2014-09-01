class AddLastLogInLastVisited < ActiveRecord::Migration
  def change
  	add_column :itens, :last_visited, :date
  	add_column :usuarios, :last_login, :date
  end
end
