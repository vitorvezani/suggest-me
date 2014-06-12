class FlagsController < ApplicationController
  helper_method :sort_coluna, :sort_direcao
  # Busca Span por ID
  before_action :set_flag, only: [:show, :update, :destroy]
  # Somente usuário logado pode relatar flag
  before_action :usuario_logado?, only: [:edit, :update, :destroy, :edit_password, :update_password]
  # Somente admin pode vizualizar a lista de todos os usuários
  before_action :usuario_admin, only: [:index]

  # GET /flags
  # GET /flags.json
  def index
    @flags = Flag.all.order(sort_coluna + " " + sort_direcao).paginate(page: params[:page], :per_page => 30)
  end

  # GET /flags/1
  # GET /flags/1.json
  def show
  end

  # GET /flags/new
  def new
    @flag = Flag.new
  end

  # POST /flags
  # POST /flags.json
  def create
    @flag = Flag.new(flag_params)

    respond_to do |format|
      if @flag.save
        flash[:success] = "#{@flag.tipo_flag.descricao} relatado com sucesso!"
        format.html { redirect_to @flag.flagavel }
        format.json { render :show, status: :created, location: @flag }
      else
        flash[:warning] = 'Flag não foi relatado com sucesso'
        format.html { redirect_to @flag.flagavel }
        format.json { render json: @flag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flags/1
  # PATCH/PUT /flags/1.json
  def update
    respond_to do |format|
      if @flag.update(flag_params)
        format.html { redirect_to @flag }
        format.json { render :show, status: :ok, location: @flag }
      else
        format.html { render :edit }
        format.json { render json: @flag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flags/1
  # DELETE /flags/1.json
  def destroy
    @flag.destroy
    respond_to do |format|
      flash[:success] = 'Relato de Flag Excluido com sucesso!'
      format.html { redirect_to flags_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flag
      @flag = Flag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flag_params
      params.require(:flag).permit(:conteudo, :tipo_flag_id, :usuario_id ,:flagavel_id, :flagavel_type)
    end

    # Somente admin pode vizualizar a pagina de usuários
    def usuario_admin
      unless is_admin?
        redirect_to root_url
      end
    end

    def sort_coluna
      Flag.column_names.include?(params[:coluna]) ? params[:coluna] : "id"
    end

    def sort_direcao
      %w[asc desc].include?(params[:direcao]) ? params[:direcao] : "asc"
    end
end
