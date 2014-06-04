class GenerosController < ApplicationController
  helper_method :sort_coluna, :sort_direcao
  before_action :set_genero, only: [:show, :edit, :update, :destroy]

  # GET /generos
  # GET /generos.json
  def index
    @generos = Genero.order(sort_coluna + " " + sort_direcao).paginate(page: params[:page], :per_page => 30)
  end

  # GET /generos/1
  # GET /generos/1.json
  def show
    @itens = @genero.itens.group("itens.id").paginate(page: params[:page], :per_page => 30)
  end

  # GET /generos/new
  def new
    @genero = Genero.new
  end

  # GET /generos/1/edit
  def edit
  end

  # POST /generos
  # POST /generos.json
  def create
    @genero = Genero.new(genero_params)

    respond_to do |format|
      if @genero.save
        flash[:success] = "Genero #{@genero.nome} foi criado com sucesso!"
        format.html { redirect_to @genero }
        format.json { render :show, status: :created, location: @genero }
      else
        flash[:danger] = "Genero #{@genero.nome} não foi criado com sucesso!"
        format.html { render :new }
        format.json { render json: @genero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generos/1
  # PATCH/PUT /generos/1.json
  def update
    respond_to do |format|
      if @genero.update(genero_params)
        flash[:success] = "Genero #{@genero.nome} foi editado com sucesso!"
        format.html { redirect_to @genero }
        format.json { render :show, status: :ok, location: @genero }
      else
        flash[:success] = "Genero #{@genero.nome} não foi editado com sucesso!"
        format.html { render :edit }
        format.json { render json: @genero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generos/1
  # DELETE /generos/1.json
  def destroy
    @genero.destroy
    respond_to do |format|
      flash[:success] = "Genero #{@genero.nome} foi excluido com sucesso!"
      format.html { redirect_to generos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genero
      @genero = Genero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genero_params
      params.require(:genero).permit(:nome, :descricao)
    end

    private

      def sort_coluna
        Item.column_names.include?(params[:coluna]) ? params[:coluna] : "nome"
      end

      def sort_direcao
        %w[asc desc].include?(params[:direcao]) ? params[:direcao] : "asc"
      end
      
end
