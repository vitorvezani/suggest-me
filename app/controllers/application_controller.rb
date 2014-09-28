class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  
  # Se o usuário não está logado, redireciona para o login
  def usuario_logado?
    unless signed_in?
      flash[:warning] = "Por favor, sign in."
      redirect_to signin_url
    end
  end

    # Se o usuário não está logado, redireciona para o login
  def usuario_nao_logado?
    if signed_in?
      flash[:warning] = "Você já está logado!"
      redirect_to usuario_path(current_user)
    end
  end

  def usuario_admin
    unless admin?
      flash[:danger] = "Você não possui privilégios para esta operação!"
      redirect_to itens_url
    end
  end

  # Verifica se o usuário a ser editado é o mesmo usuário logado.
  def usuario_correto?
    unless current_user == @usuario or current_user.admin?
      flash[:danger] = "Você não possui privilégios para esta operação!"
      redirect_to root_url
    end
  end

  def usuario_correto_flag?
    unless @flag.usuario == current_user or current_user.admin?
      flash[:danger] = "Você não possui privilégios para esta operação!"
      redirect_to root_url
    end
  end
end