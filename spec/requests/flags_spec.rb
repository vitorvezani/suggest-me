require 'spec_helper'

describe "Flags" do
  it "should not enter in the usuarios flags page" do

    visit '/flags'
    expect(page).to have_content('Por favor, sign in.')
    
  end

  it "should be possible to create a flag in user by a logged user" do

		usuario = usuario_logado
  	usuario2 = create(:usuario, username: 'teste2', email: 'teste2@teste2.com', password: '123456', password_confirmation: "123456")
    
  	visit usuario_path(usuario2)

    expect(page).to have_content('Flag')

    # TODO: Fazer o resto do fluxo
  end

  it "should be possible to create a flag in gender by a logged user" do

		usuario = usuario_logado
  	genero = create(:genero)
    
  	visit genero_path(genero)

    expect(page).to have_content('Flag')

    # TODO: Fazer o resto do fluxo
  end

  it "should be possible to create a flag in item by a logged user" do

		usuario = usuario_logado
  	item = create(:musica)
    
  	visit item_path(item)

    expect(page).to have_content('Flag')

    # TODO: Fazer o resto do fluxo
  end

  it "should be possible to create a flag in comentário by a logged user" do

		usuario_logado
  	comentario = create(:comentario)
    
  	visit item_path(comentario.item)

  	# flag_comentario
    expect(page).to have_css('#flag_comentario')

    # TODO: Fazer o resto do fluxo
  end

end
