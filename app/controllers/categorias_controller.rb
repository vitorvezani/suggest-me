class CategoriasController < ApplicationController
  helper_method :sort_coluna, :sort_direcao

  before_action :set_categoria, only: [:show]

  # GET /categorias/1
  def show
    @itens = @categoria.itens.paginate(page: params[:page], :per_page => 32)
  end

  # GET /categorias
  def index
    @categorias = Categoria.order(sort_coluna + " " + sort_direcao)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria
      @categoria = Categoria.find(params[:id])
    end

    def sort_coluna
      Categoria.column_names.include?(params[:coluna]) ? params[:coluna] : "id"
    end

    def sort_direcao
      %w[asc desc].include?(params[:direcao]) ? params[:direcao] : "asc"
    end
end
