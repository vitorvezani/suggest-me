class ChangeColumnFromUsuarios < ActiveRecord::Migration
  def change
  	change_column(:usuarios, :confirmed, :boolean, default: false)
  end
end
