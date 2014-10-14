class UsuariosController < ApplicationController
  
  helper_method :sort_coluna, :sort_direcao
  
  before_action :set_usuario, only: [:show, :edit, :update, :destroy, :edit_password, :update_password, :edit_preferences, :update_preferences, :set_admin]
  # Para qualquer dessas ação é necessario o login do usuário
  before_action :usuario_logado?, only: [:edit, :update, :destroy, :edit_password, :update_password, :edit_preferences, :update_preferences]
  # Para pag de Editar e acao Update é necessário ser o usuário que deseja alterar
  before_action :usuario_correto?, only: [:edit, :update, :destroy, :edit_password, :update_password, :edit_preferences, :update_preferences, :destroy] 
  # Somente admin pode vizualizar a lista de todos os usuários
  before_action :usuario_admin, only: [:index, :set_admin]
  # Se o usuario está logado ele não pode acessar a pagina de new e create
  before_action :redireciona_usuario_logado, only: [:new, :create]
  
  # GET /usuarios
  # GET /usuarios.json
  def index
    # Usando paginate na classe Usuario para trazer registros!

    @q = params[:q]

    if @q and !@q.blank?
      @search = Usuario.search do
        keywords params[:q]
        paginate(page: params[:page], :per_page => 30)
      end
      @usuarios = @search.results
    else
      @usuarios = Usuario.order(sort_coluna + " " + sort_direcao).paginate(page: params[:page], :per_page => 30)
    end
    
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
    @comentarios = @usuario.comentarios.paginate(page: params[:comentario_page], :per_page => 15).includes(:item)
    @avaliacoes = @usuario.avaliacoes.paginate(page: params[:avaliacao_page], :per_page => 15).includes(:item)
    @seguindo = @usuario.seguindo.paginate(page: params[:seguindo_page], :per_page => 15)
    @seguidores = @usuario.seguidores.paginate(page: params[:seguidores_page], :per_page => 15)

    if params.has_key?(:comentario_page)
      gon.position = 0
    elsif params.has_key?(:avaliacao_page)
      gon.position = 1
    elsif params.has_key?(:seguindo_page)
      gon.position = 2
    elsif params.has_key?(:seguidores_page)
      gon.position = 3
    else 
      gon.position = 0
    end
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
        Thread.new do
          UserMailer.registration_confirmation(@usuario).deliver
          ActiveRecord::Base.connection.close
        end
        flash[:success] = "Resgistro concluído com sucesso! Por favor verifique seu e-mail para ativar sua conta!"
        format.html { redirect_to root_path }
        format.json { render :show, status: :created, location: root_path }
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
        flash.now[:danger] = "Perfil não foi editado!!!"
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

  def update_password
    respond_to do |format|
      if @usuario.update(usuario_params)
        flash[:success] = "Senha modificada com sucesso!"
        format.html { redirect_to @usuario} 
      else
        flash.now[:danger] = "Senha não foi modificada!!!"
        format.html { render action: :edit_password, id: @usuario} 
      end
    end
  end

  def confirm_account
    usuario = Usuario.find_by(confimartion_code: params[:id])
    if usuario
      usuario.confirmed = true
      sign_in usuario
      flash[:success] = "Conta corfirmada! Olá #{usuario.username}. Bem Vindo ao Suggest Me!"
      redirect_to root_url
    else
      flash[:success] = "Usuário não encontrado, por favor entre em contato com os administradores!"
      redirect_to contato_path
    end
  end

  def reset_password
    # Renderiza a troca da senha
  end

  def send_reset_password
    usuario = Usuario.find_by(email: params[:email])
    unless usuario.nil?
      nova_senha = rand(36**8).to_s(36) #SecureRandom.urlsafe_base64
      usuario.update(password: nova_senha, password_confirmation: nova_senha)
      Thread.new do
        UserMailer.reset_password(usuario, nova_senha).deliver
        ActiveRecord::Base.connection.close
      end
    end
    flash[:success] = "Senha redefinida. Por favor, verifique seu e-mail!"
    redirect_to root_path
  end

  def edit_preferences
    # Renderiza editar preferencias
  end

  def update_preferences
    if @usuario.update(usuario_params)
      flash[:success] = "Preferências alteradas com sucesso!"
      redirect_to @usuario
    else
      flash.now[:danger] = "Preferências não foram alteradas!!!"
      render action: :edit_preferences, id: @usuario
    end
  end

  def set_admin
    if @usuario.update(admin: true)
      flash[:success] = "Usuário #{@usuario.get_name} agora é administrador!"
      redirect_to @usuario
    else
      flash.now[:danger] = "Alteração não foi realizada!!!"
      redirect_to @usuario
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:username, :email, :password, :password_confirmation, :primeiro_nome, :ultimo_nome, :sexo, :dt_aniversario, :info, :max_rec_colaborativa, :max_rec_conteudo)
    end

    # Before-filters function

    def redireciona_usuario_logado
        redirect_to root_url if signed_in?
    end

    def sort_coluna
      Usuario.column_names.include?(params[:coluna]) ? params[:coluna] : "id"
    end

    def sort_direcao
      %w[asc desc].include?(params[:direcao]) ? params[:direcao] : "asc"
    end
end
