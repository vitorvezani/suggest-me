require 'spec_helper'

describe "Flags" do
  it "should enter in the usuarios flags page" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    #
    # Usuários que não estão logado não devem ver a pagina de flags
    #
    visit '/flags'
    expect(page).to have_content('Por favor, sign in.')
  end
end
