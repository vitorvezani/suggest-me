module ApplicationHelper
	def sortable( coluna, titulo = nil ) 
		titulo ||= coluna.titleize
		direcao = coluna == sort_coluna && sort_direcao == "asc" ? "desc" : "asc"
		link_to titulo, params.merge(coluna: coluna, direcao: direcao, page: nil)
	end
end
