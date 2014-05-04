module ApplicationHelper
	def display_nome(current_user)
		current_user.username || current_user.primeiro_nome + " " + current_user.ultimo_nome
	end
end
