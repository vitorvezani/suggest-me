class AddColumnsToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :email_publico, :boolean, default: false
  end
end
