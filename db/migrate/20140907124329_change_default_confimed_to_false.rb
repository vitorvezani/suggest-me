class ChangeDefaultConfimedToFalse < ActiveRecord::Migration
  def change
  	change_column(:usuarios, :confirmed, :string, default: false)
  end
end
