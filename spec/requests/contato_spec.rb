require 'spec_helper'

describe "Contato Page" do

  it "should enter in the contato page and send a contact" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    visit '/contato'

    fill_in 'email', with: 'teste@teste.com'
    fill_in 'msg', with: 'Olá meu amigo!'

    click_button 'Enviar'
    
    expect(page).to have_content('Contato enviado com sucesso!')
  end
end
