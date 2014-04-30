class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  # GET /usuarios
  # GET /usuarios.json
  def index
    @usuarios = Usuario.all
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    respond_to do |format|
      if @usuario.save
        sign_in @usuario
        flash.now[:success] = "Olá #{@usuario.username}. Bem Vindo ao Suggest Me!"
        format.html { redirect_to @usuario }
        format.json { render :show, status: :created, location: @usuario }
      else
        flash.now[:danger] = "Não foi possível criar o usuário!"
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        flash.now[:success] = "Usuário foi editado com sucesso!"
        format.html { redirect_to @usuario }
        format.json { render :show, status: :ok, location: @usuario }
      else
        flash.now[:danger] = "Usuário não foi editado com sucesso!"
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    flash[:success] = "Usuário foi excluido com sucesso!"
    respond_to do |format|
      format.html { redirect_to usuarios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:username, :email, :password, :password_confirmation, :primeiro_nome, :ultimo_nome, :sexo, :dt_aniversario)
    end
end
