class AddRecommendationViewMaxToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :max_rec_colaborativa, :integer, default: 12
    add_column :usuarios, :max_rec_conteudo, :integer, default: 10
  end
end
