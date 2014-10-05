require 'spec_helper'

describe "Comentarios" do
  it "should let a user create a comment in an Item" do
    
    usuario = usuario_logado
    item = create(:jogo)

    visit item_path(item)

    fill_in 'comentario_comentario', with: 'Esse jogo é super bacana!'

    click_button 'Comentar!'
    
    expect(page).to have_content('Comentário salvo!')
  end

end
