module UsuarioMacros
	def confim_user(usuario)
		usuario.confirmed = true
		usuario.save!
	end

	def login(usuario)

    visit '/signin'

    fill_in 'session_email', with: usuario.email
    fill_in 'session_password', with: usuario.password

    confim_user(usuario)

    click_button 'Entrar'
    
    return usuario
	end

	def usuario_logado
		
    usuario = create(:usuario)
    
    visit '/signin'

    fill_in 'session_email', with: usuario.email
    fill_in 'session_password', with: usuario.password

    confim_user(usuario)

    click_button 'Entrar'

    return usuario
	end

  def admin_logado
    
    usuario = create(:admin)
    
    visit '/signin'

    fill_in 'session_email', with: usuario.email
    fill_in 'session_password', with: usuario.password

    confim_user(usuario)

    click_button 'Entrar'

    return usuario
  end

end