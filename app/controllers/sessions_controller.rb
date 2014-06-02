class SessionsController < ApplicationController
  def new
  end

  def create
    usuario = Usuario.find_by(email: params[:session][:email].downcase)
    if usuario && usuario.authenticate(params[:session][:password])
      flash[:success] = 'Você logou com sucesso!'
      sign_in usuario
      redirect_to root_url
    else
      flash[:danger] = 'E-mail/Senha incorretos'
      render 'new'
    end
  end

  def create_facebook
    usuario = Usuario.from_omniauth(env["omniauth.auth"])
    flash[:success] = 'Você logou pelo Facebook com sucesso!'
    sign_in usuario

    Thread.new do
      usuario.facebook_update
      ActiveRecord::Base.connection.close
    end

    redirect_to root_url
  end

  def destroy
    sign_out
    flash[:success] = "Você deslogou com sucesso!"
    redirect_to root_url
  end
end
