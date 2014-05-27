class CategoriasController < ApplicationController
  before_action :set_categoria, only: [:show]

  # GET /categorias/1
  # GET /categorias/1.json
  def show
    @itens = @categoria.itens.paginate(page: params[:page], :per_page => 30)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria
      @categoria = Categoria.find(params[:id])
    end
end
