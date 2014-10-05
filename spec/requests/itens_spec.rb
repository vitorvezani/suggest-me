require 'spec_helper'

describe "Itens" do

  it "should enter in the itens index page" do
    
    visit '/itens'
    expect(page).to have_content('Todos os Itens!')
  end

  it "should let user to CREATE an item" do
  
    create(:jogos) # categoria

    usuario_logado

    visit itens_path

    click_link 'Crie um novo item!'
  
    select('Jogos', from: 'item_categoria_id')
    fill_in 'item_nome_ptbr', with: 'Bullet for My Valentine'
    fill_in 'descricao', with: 'Uma descricao qualquer'

    click_button 'Enviar'

    expect(page).to have_content('Item foi criado com sucesso!')

  end

  it "should let user to EDIT an item" do
  
    usuario_logado
    item = create(:jogo)

    visit item_path(item)

    click_link 'Editar'

    fill_in 'item_descricao', with: 'Aba daba du!'

    click_button 'Enviar'

    expect(page).to have_content('O item foi editado com sucesso!')

  end

  it "should visit a item link" do

    #TODO: Refatorar
    item = create(:musica)

    visit item_path(item)

    expect(page).to have_content(item.nome_ptbr.titleize)

  end

  it "should not have a create item link if not loged in" do
    
    visit '/itens' 
    expect(page).to have_no_content('Não achou o item que procurava? Crie um novo item!')
  end

  it "should have a create item link if user loged in" do
    
    usuario = usuario_logado

    visit '/itens'
    expect(page).to have_content('Não achou o item que procurava? Crie um novo item!')
  end

end
