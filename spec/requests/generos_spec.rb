require 'spec_helper'

describe "Generos" do
  it "should enter in the generos index page" do
    
    visit generos_path
    
    expect(page).to have_content('Todos os Gêneros')
  end

  it "should visit a gender" do
    
    genero = create(:genero)

    visit genero_path(genero)

    expect(page).to have_content(genero.nome)
  end

  it "should not have a create gender link if not login" do
    
    visit generos_path

    expect(page).to have_no_content('Não achou o gênero que procurava? Crie um novo gênero')
  end

  it "should have a create gender link if user logedin" do

    usuario = usuario_logado
    
    visit generos_path

    expect(page).to have_content('Não achou o gênero que procurava? Crie um novo gênero')
  end

  it "should let user edit a gender" do
    
    usuario_logado

    genero = create(:genero)

    visit genero_path(genero)

    click_link 'Editar'

    fill_in 'genero_descricao', with: 'Genero legal demais!'
    click_button 'Enviar'

    expect(page).to have_content('Gênero ' + genero.nome + ' foi editado com sucesso!')
  end

end
