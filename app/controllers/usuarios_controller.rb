class UsuariosController < ApplicationController

  before_action :set_usuario, only: [:show, :edit, :update, :destroy, :facebook, :edit_password, :update_password]
  # Para qualquer dessas ação é necessario o login do usuário
  before_action :usuario_logado, only: [:edit, :update, :destroy, :edit_password, :update_password]
  # Para pag de Editar e acao Update é necessário ser o usuário que deseja alterar
  before_action :usuario_correto, only: [:edit, :update, :edit_password, :update_password] 
  # Somente admin pode vizualizar a lista de todos os usuários
  before_action :usuario_admin, only: [:index]
  # Se o usuario está logado ele não pode acessar a pagina de new e create
  before_action :redireciona_usuario_logado, only: [:new, :create]
  
  # GET /usuarios
  # GET /usuarios.json
  def index
    # Usando paginate na classe Usuario para trazer registros!
    @usuarios = Usuario.paginate(page: params[:page], :per_page => 30)
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
    @comentarios = @usuario.comentarios.paginate(page: params[:page], :per_page => 5)
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # GET /usuarios/1/edit_password
  def edit_password
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    respond_to do |format|
      if @usuario.save
        sign_in @usuario
        flash[:success] = "Olá #{@usuario.username}. Bem Vindo ao Suggest Me!"
        format.html { redirect_to @usuario }
        format.json { render :show, status: :created, location: @usuario }
      else
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
        flash[:success] = "Perfil editado com sucesso!"
        format.html { redirect_to @usuario }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    flash[:success] = "Perfil excluido com sucesso!"
    respond_to do |format|
      format.html { redirect_to usuarios_url }
      format.json { head :no_content }
    end
  end

  def facebook

    @graph = Koala::Facebook::API.new("CAACEdEose0cBALUanIGdFbbCeLAnePiZBfs1H7swQdqNPZCrOQ6Xlg5QngxxDNxSO7aFIhdV1O74DDOU3DKh7HtWwagbvxD0s8UsVh0omUl44YHFVtcUM9G8l2aGNJ2nKGzrWFhPAHYUxJr2f7Kxn9EU1ehW9jkgJ8Uq9c1DsBcQQf9W2c3NgJdhzT53UZD")

    @fb_user = @graph.get_objects(@usuario.uid)

    @musicas = get_lista("me", "music").dup
    #@livros  = get_lista("me", "books").dup
    #@filmes  = get_lista("me", "movies").dup
    #@jogos   = get_lista("me", "games").dup

  end

  def update_password
    respond_to do |format|
      if @usuario.update(usuario_params)
        flash[:success] = "Senha modificada com sucesso!"
        format.html { redirect_to @usuario} 
      else
        flash[:danger] = "Senha não foi salva!"
        format.html { render action: :edit_password, id: @usuario} 
      end
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

    # Before-filters function

    # Verifica se o usuário a ser editado é o mesmo usuário logado.
    def usuario_correto
      @usuario = Usuario.find(params[:id])
      redirect_to(root_url) unless current_user == @usuario
    end

    # Somente admin pode vizualizar a pagina de usuários
    def usuario_admin
      unless is_admin?
        redirect_to root_url
      end
    end

    def redireciona_usuario_logado
      unless !signed_in?
        redirect_to root_url
      end
    end

    def get_lista who, what
      array = Array.new
      n = 0
      array.insert(n, @graph.get_connections(who, what))
      while !array.at(n).nil? do
        n = n + 1
        array.insert(n, array.at(n-1).next_page)
      end
      return array
    end
end
