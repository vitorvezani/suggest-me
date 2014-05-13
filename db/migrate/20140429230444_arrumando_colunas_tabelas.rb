class ArrumandoColunasTabelas < ActiveRecord::Migration
  def change
  	 # avaliacoes
  	rename_column :avaliacoes, :id_user, :id_usuario
  	rename_column :avaliacoes, :id_tipo_avaliacao, :avaliacao
  	# usuarios
  	rename_column :usuarios, :role, :admin
  end
end
