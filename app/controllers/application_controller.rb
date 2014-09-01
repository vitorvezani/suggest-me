class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  
  # Se o usuário não está logado, redireciona para o login
  def usuario_logado?
    unless signed_in?
      flash[:warning] = "Por favor Sign in."
      redirect_to signin_url
    end
  end
end