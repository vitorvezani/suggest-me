class ChangeDateToDateTime < ActiveRecord::Migration
  def change
  	change_column(:usuarios, :last_login, :datetime )
  	change_column(:itens, :last_visited , :datetime )
  	add_index :usuarios, :last_login
  	add_index :itens, :last_visited
  end
end
