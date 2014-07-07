class ItensController < ApplicationController
  helper_method :sort_coluna, :sort_direcao
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :usuario_admin, only: [:destroy] # Verifica se é o usuário admin.

  # GET /itens
  # GET /itens.json
  def index
    #@itens = Item.joins(:avaliacoes).group("avaliacoes.item_id").order("sum(avaliacoes.avaliacao) desc").paginate(page: params[:page], :per_page => 30)
    @itens = Item.order(sort_coluna + " " + sort_direcao).paginate(page: params[:page], :per_page => 30)
    @avaliacoes = get_avaliacoes
  end

  # GET /itens/1
  # GET /itens/1.json
  def show
    
    # Cria uma instancia do comentario e avaliacao para enviar para o create do comentario/avaliacao
    if signed_in?
      # Avaliacao
      @new_avaliacao = current_user.avaliacoes.build(item_id: @item.id)
      # Comentario
      @new_comentario = current_user.comentarios.build(item_id: @item.id)
      # Generalizacao
      @new_genero = @item.generalizacoes.build(item_id: @item.id)
    end

    # Atributos do item em questão
    @comentarios = @item.comentarios.paginate(page: params[:page], :per_page => 10).order(created_at: :desc)
    @avaliacoes = @item.avaliacoes.paginate(page: params[:page], :per_page => 10).order(created_at: :desc)
    @avaliacoes_count = { positivas: @item.avaliacoes.where("avaliacao = ?", true).count, negativas: @item.avaliacoes.where("avaliacao = ?", false).count }

    gon.usuario_logado = signed_in?

    # Imagem do Item
    suckr = ImageSuckr::GoogleSuckr.new
    @img_url = suckr.get_image_url ({"q" => @item.get_name, "safe" => "active"})
  end

  # GET /itens/new
  def new
    @item = Item.new
  end

  # GET /itens/1/edit
  def edit
  end

  # GET /itens/
  def recomendacao
    # Numero de avaliações feitas pelo usuário logado
    @num_avaliacoes = current_user.num_avaliacoes

    @itens = (Item.all - current_user.itens)
    @notas = get_notas

    @notas = @notas.sort_by { |item_id, nota| nota }.reverse.take 50

    @jogos = Array.new
    @livros = Array.new 
    @musicas = Array.new 
    @filmes = Array.new

    @itens_recomendados = Array.new
    @notas.each do |hash|
      item = Item.find(hash[0])

      if item.is_book
        @livros << item
      elsif item.is_film
        @filmes << item
      elsif item.is_game
        @jogos << item
      elsif item.is_music
        @musicas << item
      end
    end
  end

  # POST /itens
  # POST /itens.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        flash[:success] = "Item foi criado com sucesso!"
        format.html { redirect_to @item }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itens/1
  # PATCH/PUT /itens/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        flash[:success] = "O item foi editado com sucesso!"
        format.html { redirect_to @item}
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itens/1
  # DELETE /itens/1.json
  def destroy
    @item.destroy
    flash[:success] = "Item foi excluído com sucesso!"
    respond_to do |format|
      format.html { redirect_to itens_url }
      format.json { head :no_content }
    end
  end

  def search
    @q = params[:q]
    @search = Item.search do
      keywords params[:q]
      paginate(page: params[:page], :per_page => 30)
    end

    @itens = @search.results
    @avaliacoes = get_avaliacoes

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:categoria_id, :nome_ptbr, :nome_en, :descricao)
    end

    def usuario_admin
      unless is_admin?
        flash[:danger] = "Você não possui privilégios para esta operação!"
        redirect_to itens_url
      end
    end

    def sort_coluna
      Item.column_names.include?(params[:coluna]) ? params[:coluna] : "id"
    end

    def sort_direcao
      %w[asc desc].include?(params[:direcao]) ? params[:direcao] : "asc"
    end

    def get_avaliacoes
      @avaliacoes = Hash.new
      @itens.each do |item|
        @avaliacoes[item.id] = [Avaliacao.where('item_id = ? AND avaliacao = ?', item.id, false).count, Avaliacao.where('item_id = ? AND avaliacao = ?', item.id, true).count]
      end
      return @avaliacoes
    end

    def get_notas
      @notas = Hash.new
      @itens.each do |item|
        @notas[item.id] = current_user.prediction_for(item)
      end
      return @notas
    end
end
