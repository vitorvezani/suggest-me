class AdicionandoColunasFacebook2 < ActiveRecord::Migration
  def change
  	add_column :usuarios, :image, :string
  end
end
