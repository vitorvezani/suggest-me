class ItensController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :usuario_admin, only: [:edit, :update, :destroy] # Verifica se é o usuário admin.

  # GET /itens
  # GET /itens.json
  def index
    #@itens = Item.joins(:avaliacoes).group("avaliacoes.item_id").order("sum(avaliacoes.avaliacao) desc").paginate(page: params[:page], :per_page => 30)
    @itens = Item.paginate(page: params[:page], :per_page => 30)
    @avaliacoes = Hash.new
    Item.all.each do |item|
      @avaliacoes[item.id] = [Avaliacao.where('item_id = ? AND avaliacao = ?', item.id, false).count, Avaliacao.where('item_id = ? AND avaliacao = ?', item.id, true).count]
    end
  end

  # GET /itens/1
  # GET /itens/1.json
  def show
    # Cria uma instancia do comentario e avaliacao para enviar para o create do comentario/avaliacao
    if signed_in?
      # Avaliacao
      @avaliacao = current_user.avaliacoes.build(item_id: @item.id)
      # Comentario
      @comentario = current_user.comentarios.build(item_id: @item.id)
      # Avaliação do usuario, caso exista
      @avaliacao_usuario = Avaliacao.where("usuario_id = ? and item_id = ?", current_user.id, @item.id)
    end

    @comentarios = @item.comentarios.paginate(page: params[:page], :per_page => 5).order(created_at: :desc)
    @avaliacoes = { positivas: @item.avaliacoes.where("avaliacao = ?", true).count, negativas: @item.avaliacoes.where("avaliacao = ?", false).count }

    @usuario_logado = signed_in?
    gon.usuario_logado = @usuario_logado
  end

  # GET /itens/new
  def new
    @item = Item.new
  end

  # GET /itens/1/edit
  def edit
  end

  # POST /itens
  # POST /itens.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        flash.now[:success] = "O item foi criado com sucesso!"
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
    respond_to do |format|
      format.html { redirect_to itens_url }
      format.json { head :no_content }
    end
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
end
