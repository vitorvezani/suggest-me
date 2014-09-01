class AddInfoParaUsuario < ActiveRecord::Migration
  def change
  	add_column :usuarios, :info, :string
  end
end
