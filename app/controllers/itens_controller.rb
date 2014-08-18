class ItensController < ApplicationController
  helper_method :sort_coluna, :sort_direcao
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :usuario_admin, only: [:destroy] # Verifica se é o usuário admin.

  # GET /itens
  # GET /itens.json
  def index
    #@itens = Item.joins(:avaliacoes).group("avaliacoes.item_id").order("sum(avaliacoes.avaliacao) desc").paginate(page: params[:page], :per_page => 30)
    @itens = Item.order(sort_coluna + " " + sort_direcao).paginate(page: params[:page], :per_page => 30).includes(:categoria)
    @avaliacoes = get_avaliacoes
  end

  # GET /itens/1
  # GET /itens/1.json
  def show
    @itens_recomendados = Array.new

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
    @comentarios = @item.comentarios.paginate(page: params[:page], :per_page => 15).order(created_at: :desc).includes(:usuario)
    @avaliacoes = @item.avaliacoes.paginate(page: params[:page], :per_page => 15).order(created_at: :desc).includes(:usuario)
    @avaliacoes_count = { positivas: @item.avaliacoes.where("avaliacao = ?", true).count, negativas: @item.avaliacoes.where("avaliacao = ?", false).count }

    gon.usuario_logado = signed_in?

    start_t = Time.now

    @itens_mesmo_genero = @item.get_tf_idf_recommendations

    finish_t = Time.now
    puts "Tempo para realizar todo o processo: " + (finish_t - start_t).to_s + "segundos"

    @itens_recomendados #= @item.get_itens_recomendados

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

    start_t = Time.now

    @livros = Array.new
    @filmes = Array.new
    @jogos = Array.new
    @musicas = Array.new

    # Numero de avaliações feitas pelo usuário logado
    @num_avaliacoes = current_user.avaliacoes.size

    recommendations = current_user.get_recommendations

    recommendations = recommendations.sort_by { |item_id, nota| nota }.reverse.take 500

    recommendations.each do |key, value|
      
      if value != -1 then
        item = Item.find(key)

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

    @livros  = @livros.take(12)
    @filmes  = @filmes.take(12)
    @jogos   = @jogos.take(12)
    @musicas = @musicas.take(12)

    finish_t = Time.now
    puts "Tempo para realizar todo o processo: " + (finish_t - start_t).to_s + "segundos"

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
end
