require 'spec_helper'

describe "PasswordResets" do
  it "emaisl when user forget the password" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    visit '/signin'
    click_link 'Clique aqui!' # Esqueceu sua senha. Clique aqui!
    fill_in 'email', with: 'email@email.com'
    click_button 'Enviar'
    expect(page).to have_content('Senha redefinida. Por favor, verifique seu e-mail!')
  end
end
