class GenerosController < ApplicationController
  helper_method :sort_coluna, :sort_direcao
  
  before_action :set_genero, only: [:show, :edit, :update, :destroy]

  # GET /generos
  # GET /generos.json
  def index

    @q = params[:q]

    if @q
      @search = Genero.search do
        keywords params[:q]
        paginate(page: params[:page], :per_page => 30)
      end
      @generos = @search.results
    else
      @generos = Genero.order(sort_coluna + " " + sort_direcao).paginate(page: params[:page], :per_page => 30)
    end
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

    if params.has_key?(:usa_wiki)
      @genero.descricao = Utils::descricao_wiki(@genero.nome)
      if @genero.descricao.nil?
        flash.now[:danger] = "Não foi possível buscar a descrição do Wikipédia"
        render :new
        return
      end
    end

    respond_to do |format|
      if @genero.save
        flash[:success] = "Gênero #{@genero.nome} foi criado com sucesso!"
        format.html { redirect_to @genero }
        format.json { render :show, status: :created, location: @genero }
      else
        flash.now[:danger] = "Gênero #{@genero.nome} não foi criado com sucesso!"
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
        flash[:success] = "Gênero #{@genero.nome} foi editado com sucesso!"
        format.html { redirect_to @genero }
        format.json { render :show, status: :ok, location: @genero }
      else
        flash.now[:danger] = "Gênero #{@genero.nome} não foi editado com sucesso!"
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
      flash[:success] = "Gênero #{@genero.nome} foi excluido com sucesso!"
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

    def sort_coluna
      Genero.column_names.include?(params[:coluna]) ? params[:coluna] : "id"
    end

    def sort_direcao
      %w[asc desc].include?(params[:direcao]) ? params[:direcao] : "asc"
    end
      
end
