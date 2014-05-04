class UsernamePasswordNull < ActiveRecord::Migration
  def change
  	change_column(:usuarios, "username", "string", {limit: 255, unique: true, null: true})
  	change_column(:usuarios, "email", "string", {limit: 255, unique: true, null: true})
  end
end
