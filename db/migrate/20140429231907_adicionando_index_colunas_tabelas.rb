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
  	add_index  :generalizacoes, :genero_id
  	add_index  :generalizacoes, :item_id
  end
end
