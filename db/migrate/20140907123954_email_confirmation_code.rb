class EmailConfirmationCode < ActiveRecord::Migration
  def change
  	add_column :usuarios, :confimartion_code, :string
  	add_column :usuarios, :confirmed, :string
  end
end
