class SenhaUniqueFalse < ActiveRecord::Migration
  def change
  	change_column(:usuarios, "senha", "string", {limit: 40, unique: false, null: false})
  end
end
