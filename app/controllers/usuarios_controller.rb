class UsuariosController < ApplicationController

  before_action :set_usuario, only: [:show, :edit, :update, :destroy, :facebook]
  # Para qualquer dessas ação é necessario o login do usuário
  before_action :usuario_logado, only: [:edit, :update, :destroy]
  # Para pag de Editar e acao Update é necessário ser o usuário que deseja alterar
  before_action :usuario_correto, only: [:edit, :update] 
  # Somente admin pode vizualizar a lista de todos os usuários
  before_action :usuario_admin, only: [:index]
  # Se o usuario está logado ele não pode acessar a pagina de new e create
  before_action :redireciona_usuario_logado, only: [:new, :create]
  
  # GET /usuarios
  # GET /usuarios.json
  def index
    # Usando paginate na classe Usuario para trazer registros!
    @usuarios = Usuario.paginate(page: params[:page], :per_page => 10)
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
    @comentarios = @usuario.comentarios.paginate(page: params[:page], :per_page => 10)
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
        flash.now[:success] = "Perfil editado com sucesso!"
        format.html { redirect_to @usuario }
        format.json { render :show, status: :ok, location: @usuario }
      else
        flash.now[:danger] = "Perfil não foi editado com sucesso!"
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    flash.now[:success] = "Perfil excluido com sucesso!"
    respond_to do |format|
      format.html { redirect_to usuarios_url }
      format.json { head :no_content }
    end
  end

  def facebook

    @graph = Koala::Facebook::API.new("CAACEdEose0cBAMK4ZAHPAAEewS7KrTtZAS1BI5n5FGSgf0ihOloGx4ZAfZArvbvzCUlTLt42jtFFv7ZAZAgqVPMwNrXmBKQMCsS3wL16JaZB9sw12ZBGBWMWZCMc17Tp6uOCOB155VY3dpFXFDDP5U4WZA0ZClKZCRCLZC5qrBS702Sd8HcKNcFiE053QeFVZBZArohG28ZD")

    @fb_user = @graph.get_objects(@usuario.uid)
    @musicas = @graph.get_connections( @usuario.uid, "music")
    @livros = @graph.get_connections( @usuario.uid, "books")
    @videos = @graph.get_connections( @usuario.uid, "videos")
    @jogos = @graph.get_connections( @usuario.uid, "games")

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

    # Before-filters function

    # Se o usuário não está logado, redireciona para o login
    def usuario_logado
      unless signed_in?
        flash.now[:warning] = "Por favor Sign in."
        redirect_to signin_url
      end
    end

    # Verifica se o usuário a ser editado é o mesmo usuário logado.
    def usuario_correto
      @usuario = Usuario.find(params[:id])
      redirect_to(root_url) unless current_user == @usuario
    end

    # Somente admin pode vizualizar a pagina de usuários
    def usuario_admin
      unless ( is_admin? && current_user != @usuario)
        redirect_to root_url
      end
    end

    def redireciona_usuario_logado    
        redirect_to root_url unless !current_user
    end
end
