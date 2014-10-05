require 'spec_helper'

describe "Usuarios" do
  it "should not enter in the usuarios index page" do

    visit '/usuarios'
    expect(page).to have_content('Você não possui privilégios para esta operação!')

  end

  it "should enter in the usuarios flags page" do

    usuario_logado

    visit '/flags'
    expect(page).to have_content('Minhas Flags')
    
  end

  it "creates an account @ signup page" do

   	visit '/signup'

		fill_in 'usuario_username', with: 'teste.teste'
		fill_in 'usuario_email', with: 'teste@teste.com'
		fill_in 'usuario_password', with: 'secreate'
		fill_in 'usuario_password_confirmation', with: 'secreate'

    click_button 'Enviar'

    expect(page).to have_content('Resgistro concluído com sucesso! Por favor verifique seu e-mail para ativar sua conta!')

  end

  it "shows a user page of a loged in user" do

    usuario = create(:usuario)

    login(usuario)

    visit usuario_path(usuario)

    expect(page).to have_content("Editar")
    expect(page).to have_content("Mudar Senha")
    expect(page).to have_content("Excluir Conta")

  end

  it "let a user edit his profiler" do

  	info = "Sou um cara muito gente boa"

    usuario = usuario_logado

    visit edit_usuario_path(usuario)

    fill_in 'usuario_info', with: info

    click_button 'Enviar'

    expect(page).to have_content(info)
    
  end

  it "let a user edit his recommendation preferences" do

  	max_rec_colaborativa = 10
		max_rec_conteudo = 11

    usuario = usuario_logado

    visit edit_preferences_path(usuario)

    fill_in 'usuario_max_rec_colaborativa', with: max_rec_colaborativa
   	fill_in 'usuario_max_rec_conteudo', with: max_rec_conteudo
    click_button 'Enviar'

    expect(page).to have_content("Preferências alteradas com sucesso!")

		# Volta na pagina para checar os valores
		#visit edit_preferences_path(usuario)
    #expect(page).to have_content(max_rec_conteudo)
  end

  it "let a user edit his password" do

    usuario = usuario_logado

    visit edit_password_path(usuario)

    fill_in 'usuario_password', with: "novopassword"
    fill_in 'usuario_password_confirmation', with: "novopassword"

    click_button 'Enviar'

    expect(page).to have_content('Senha modificada com sucesso!')
  end

end
