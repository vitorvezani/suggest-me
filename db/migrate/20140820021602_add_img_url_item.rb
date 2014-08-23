class AddImgUrlItem < ActiveRecord::Migration
  def change
  	add_column :itens, :img_url, :string
  end
end
