class RelacoesController < ApplicationController
  before_action :usuario_logado?

  def create
    @usuario = Usuario.find(params[:relacao][:seguido_id])
    @seguidores = @usuario.seguidores.paginate(page: params[:page], :per_page => 15)
    current_user.seguir!(@usuario)
    respond_to do |format|
      format.html { redirect_to @usuario }
      format.js
    end
  end

  def destroy
    @usuario = Relacao.find(params[:id]).seguido
    @seguidores = @usuario.seguidores.paginate(page: params[:page], :per_page => 15)
    current_user.unfollow!(@usuario)
    respond_to do |format|
      format.html { redirect_to @usuario }
      format.js
    end
  end

end