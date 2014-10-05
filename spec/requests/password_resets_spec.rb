require 'spec_helper'

describe "PasswordResets" do
  it "sends email when user forget the password" do
    
    usuario = create(:usuario).should be_valid

   	visit '/signin'
    click_link 'Clique aqui!' # Esqueceu sua senha. Clique aqui!
    fill_in 'email', with: 'teste@teste.com'
    click_button 'Enviar'
    expect(page).to have_content('Senha redefinida. Por favor, verifique seu e-mail!')

  end
end
