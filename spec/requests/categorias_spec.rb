require 'spec_helper'

describe "Categorias" do
  it "should enter in the categorias index page" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    visit '/categorias'
    expect(page).to have_content('Todas as Categorias')
  end
end
