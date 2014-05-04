class PasswordDigest < ActiveRecord::Migration
  def change
  	change_column(:usuarios, "password_digest", "string", {limit: 255, null: true})
  end
end
