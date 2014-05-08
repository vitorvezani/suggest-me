class AdicionandoIndexColunasTabelas < ActiveRecord::Migration
  def change
  	# Avaliacoes
  	add_index  :avaliacoes, :id
  	add_index  :avaliacoes, :id_usuario
  	add_index  :avaliacoes, :id_item
  	# Categorias
  	add_index  :categorias, :id
  	# Comentarios
  	add_index  :comentarios, :id
  	add_index  :comentarios, :id_usuario
  	add_index  :comentarios, :id_item
  	# Generos
  	add_index  :generos, :id
  	# Itens
  	add_index  :itens, :id
  	add_index  :itens, :id_categoria
    add_index  :itens, :nome_ptbr
    add_index  :itens, :nome_en
  	# Rel_Generos_Itens
  	add_index  :generos_itens, :id_genero
  	add_index  :generos_itens, :id_item
  end
end
