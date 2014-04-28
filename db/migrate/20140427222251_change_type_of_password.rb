class ChangeTypeOfPassword < ActiveRecord::Migration
  def change
  	change_column(:usuarios, "password_digest", "string", {limit: nil, null: false})
  end
end
