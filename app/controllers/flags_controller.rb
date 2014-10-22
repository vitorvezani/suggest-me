class FlagsController < ApplicationController
  helper_method :sort_coluna, :sort_direcao
  # Busca Span por ID
  before_action :set_flag, only: [:show, :edit, :update, :destroy]
  # Somente usuário logado pode relatar flag
  before_action :usuario_logado?, only: [:new, :edit, :update]
  # Somente ve a flag que ele fez
  before_action :usuario_correto_flag?, only: [:show, :edit, :update, :destroy]
  # Somente usuário logado pode visitar o index
  before_action :usuario_logado?, only: [:index]

  # GET /flags
  # GET /flags.json
  def index
    if admin?
      @flags_count = Flag.count
      @flags = Flag.all.order(sort_coluna + " " + sort_direcao).paginate(page: params[:page], :per_page => 30)
    else
      @flags_count = Flag.where(usuario_id: current_user.id).count
      @flags = Flag.where(usuario_id: current_user.id).order(sort_coluna + " " + sort_direcao).paginate(page: params[:page], :per_page => 30)
    end
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
        flash[:success] = "Flag '#{@flag.tipo_flag.descricao}' relatado com sucesso!"
        format.html { redirect_to @flag.flagavel }
        format.json { render :show, status: :created, location: @flag }
      else
        flash.now[:warning] = 'Flag não foi relatado com sucesso'
        format.html { redirect_to @flag.flagavel }
        format.json { render json: @flag.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /flags/1/edit
  def edit
    
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
      flash[:success] = 'Relato de flag excluído com sucesso!'
      format.html { redirect_to flags_path }
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

    def sort_coluna
      Flag.column_names.include?(params[:coluna]) ? params[:coluna] : "id"
    end

    def sort_direcao
      %w[asc desc].include?(params[:direcao]) ? params[:direcao] : "asc"
    end
end
