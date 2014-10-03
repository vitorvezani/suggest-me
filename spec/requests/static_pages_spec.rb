require 'spec_helper'

describe "StaticPages" do
	it "should enter in the root page" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    visit '/'
    expect(page).to have_content('Home')
  end

  it "should enter in the sobre page" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    visit '/sobre'
    expect(page).to have_content('Sobre')
  end

  it "should enter in the privacidade page" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    visit '/privacidade'
    expect(page).to have_content('Privacidade')
  end

  it "should enter in the termos page" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    visit '/termos'
    expect(page).to have_content('Termos')
  end

  it "should enter in the contato page" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    visit '/contato'
    expect(page).to have_content('Contate Suggest Me!')
  end
end
