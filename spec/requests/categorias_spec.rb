require 'spec_helper'

describe "Categorias" do
  it "should enter in the categorias index page" do
    
    visit '/categorias'
    expect(page).to have_content('Todas as Categorias')
  end

  it "should visit a categoria" do
    
    categoria = create(:jogos)

    visit categorias_path(categoria)

    expect(page).to have_content(categoria.descricao)
  end

end
