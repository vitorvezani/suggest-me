require 'spec_helper'

describe "Usuarios" do

  it "admin should have a indicator @ users show page " do

    admin = admin_logado

    visit usuario_path(admin)
    expect(page).to have_content("Admin") 

  end

  it "admin should enter in the usuarios index page" do

    admin_logado

    visit '/usuarios'
    expect(page).to have_content("Todos usuários") 

  end

  it "should enter in the flags page with all flags" do

    admin_logado

    visit '/flags'
    expect(page).to have_content('Todas as Flags')
    
  end

  it "admin can Edit, Change and Delete a user" do
    usuario = create(:usuario)
    admin_logado

    visit usuario_path(usuario)

    expect(page).to have_content("Editar")
    expect(page).to have_content("Mudar Senha")
    expect(page).to have_content("Excluir Conta")
  end

  it "should let admin to DELETE an item" do
  
    admin_logado
    item = create(:jogo)

    visit item_path(item)

    # TODO: Está com problemas para excluir por causa do popup javascript
    expect(page).to have_content('Excluir')
    
  end

end
