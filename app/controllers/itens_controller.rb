class ItensController < ApplicationController
  helper_method :sort_coluna, :sort_direcao
  before_action :set_item, only: [:show, :edit, :update, :destroy, :content_recommendation, :refresh_item_img]
  before_action :usuario_admin, only: [:destroy] # Verifica se é o usuário admin.

  # GET /itens
  # GET /itens.json
  def index

    @q = params[:q]

    if @q then
      @search = Item.search do
        keywords params[:q]
        paginate(page: params[:page], :per_page => 30)
      end
      @itens = @search.results
      @avaliacoes = avaliacoes
    else
      #@itens = Item.joins(:avaliacoes).group("avaliacoes.item_id").order("sum(avaliacoes.avaliacao) desc").paginate(page: params[:page], :per_page => 30)
      @itens = Item.order(sort_coluna + " " + sort_direcao).paginate(page: params[:page], :per_page => 30).includes(:categoria)
      @avaliacoes = avaliacoes
    end

    gon.usuario_logado = signed_in?
    
  end

  # GET /itens/1
  # GET /itens/1.json
  def show

    @itens_recomendados = Array.new

    # Atributos do item em questão
    @comentarios = @item.comentarios.paginate(page: params[:comentario_page], :per_page => 15).order(created_at: :desc).includes(:usuario)
    @avaliacoes = @item.avaliacoes.paginate(page: params[:avaliacao_page], :per_page => 15).order(created_at: :desc).includes(:usuario)
    @avaliacoes_count = { positivas: @item.avaliacoes.where("avaliacao = ?", true).count, negativas: @item.avaliacoes.where("avaliacao = ?", false).count }

    gon.usuario_logado = signed_in?
    gon.item_id = @item.id

    @item.update(last_visited: Time.now);

  end

  # GET /itens/new
  def new
    @item = Item.new
  end

  # GET /itens/1/edit
  def edit
  end

  def content_recommendation
  # GET /itens/1
  
    start_t = Time.now
  
    c_recommendations = ContentRecommendationService.new(@item)

    @itens_recomendados = c_recommendations.recommend

    finish_t = Time.now
    puts "Tempo para realizar todo o processo: " + (finish_t - start_t).to_s + "segundos"
  
    respond_to do |format|
       format.js
    end
  
  end

  def refresh_item_img
    @url = @item.get_image_url
    puts "url: #{@url}"
    respond_to do |format|
      format.js
    end
  end

  # GET /itens/
  def collaborative_recommendation

    start_t = Time.now

    @livros = Hash.new
    @filmes = Hash.new
    @jogos = Hash.new
    @musicas = Hash.new

    # Numero de avaliações feitas pelo usuário logado
    @num_avaliacoes = current_user.avaliacoes.size

    if @num_avaliacoes >= GlobalConstants::NUM_AVALIACOES then

      c_recommendations = CollaborativeRecommendationService.new(current_user)

      recommendations = c_recommendations.recommend

      recommendations = recommendations.sort_by { |item_id, nota| nota }.reverse.take 200

      recommendations.each do |item_id, nota|
        
        if nota != -1 then
          item = Item.find(item_id)

          if item.book?
            @livros[nota] = item
          elsif item.film?
            @filmes[nota] = item
          elsif item.game?
            @jogos[nota] = item
          elsif item.music?
            @musicas[nota] = item
          end
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

    if params.has_key?(:usa_wiki) then
      @item.descricao = Utils::descricao_wiki(@item.get_name)
      if @item.descricao.nil? then
        flash.now[:danger] = "Não foi possível buscar a descrição do Wikipédia"
        render :new
        return
      end
    end

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
        flash.now[:success] = "O item não foi editado com sucesso!"
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
    @avaliacoes = avaliacoes

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
      unless admin?
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

    def avaliacoes
      @avaliacoes = Hash.new
      @itens.each do |item|
        @avaliacoes[item.id] = [Avaliacao.where('item_id = ? AND avaliacao = ?', item.id, false).count, Avaliacao.where('item_id = ? AND avaliacao = ?', item.id, true).count]
      end
      return @avaliacoes
    end
end
