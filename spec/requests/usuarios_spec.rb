require 'spec_helper'

describe "Usuarios" do
  it "should enter in the usuarios index page" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    #
    # Usuários que não estão logado não devem ver a pagina de usuários
    #
    visit '/usuarios'
    expect(page).to have_content('Você não possui privilégios para esta operação!')
  end
end
