class ArrumandoColunasTabelas < ActiveRecord::Migration
  def change
  	 # avaliacoes
  	rename_column :avaliacoes, :id_user, :id_usuario
  	rename_column :avaliacoes, :id_tipo_avaliacao, :avaliacao
  	change_column(:avaliacoes, :avaliacao, :boolean )
  	# usuarios
  	rename_column :usuarios, :role, :admin
  	change_column(:usuarios, :admin, :boolean, default: false)
  end
end
