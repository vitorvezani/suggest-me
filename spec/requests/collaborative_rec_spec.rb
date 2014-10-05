require 'spec_helper'
#include Warden::Test::Helpers
#Warden.test_mode!

describe "Collaborative Recommendation" do
  it "shows a info message for user that not have min avaliations" do

    usuario = usuario_logado

    visit '/collaborative_recommendation'

    expect(page).to have_content("Não foi possível realizar as recomendações")
  end

end
