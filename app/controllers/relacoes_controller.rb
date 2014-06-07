class RelacoesController < ApplicationController
  before_action :usuario_logado?

  def create
    @usuario = Usuario.find(params[:relacao][:seguido_id])
    current_user.seguir!(@usuario)
    redirect_to @usuario
  end

  def destroy
    @usuario = Relacao.find(params[:id]).seguido
    current_user.unfollow!(@usuario)
    redirect_to @usuario
  end

end