require 'spec_helper'

describe "Sessions" do

  it "shows a message for unconfirmed user that tries to login" do
  
    usuario = create(:usuario)

    visit '/signin'

    fill_in 'session_email', with: usuario.email
    fill_in 'session_password', with: usuario.password

    click_button 'Entrar'

    expect(page).to have_content('Usuário não confirmado! Por favor, verifique seu e-mail!')
  end

  it "create a session for a confirmed user @ signin page" do
   
    usuario = create(:usuario)

    visit '/signin'

    fill_in 'session_email', with: usuario.email
    fill_in 'session_password', with: usuario.password

    confim_user(usuario)

    click_button 'Entrar'

    expect(page).to have_content('Você logou com sucesso!')
  end

end