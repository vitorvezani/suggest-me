require 'spec_helper'

describe "Generos" do
  it "should enter in the generos index page" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    visit '/generos'
    expect(page).to have_content('Todos os Gêneros')
  end
end
