require 'spec_helper'

describe "Itens" do
  it "should enter in the itens index page" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    visit '/itens'
    expect(page).to have_content('Todos os Itens!')
  end
end
