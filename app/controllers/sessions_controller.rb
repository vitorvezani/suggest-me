class SessionsController < ApplicationController
  
  before_action :usuario_nao_logado?, only: [:new ,:create]

  def new
    @uid = params[:uid]
    @email = params[:email]
  end

  def create

    usuario = Usuario.find_by(email: params[:session][:email].downcase)
    if usuario && usuario.authenticate(params[:session][:password])
      # Verifica se está linkando a conta com o facebook
      if (params[:session][:uid] rescue nil) then
        usuario.uid = params[:session][:uid]
        usuario.save!
        redirect_to "/auth/facebook"
      else
        if usuario.confirmed
          flash[:success] = 'Você logou com sucesso!'
          sign_in usuario
          redirect_to root_url
        else
          flash[:warning] = 'Usuário não confirmado! Por favor, verifique seu e-mail !'
          redirect_to root_url
        end
      end
    else
      flash.now[:danger] = 'E-mail ou Senha incorretos'
      render 'new'
    end
  end

  def create_facebook

    auth = env["omniauth.auth"]

    if Usuario.where(email: auth.info.email, uid: nil).size > 0
      # Neste caso o usuário possuí conta no sistema mas ainda não está linkada
      redirect_to action: "new", uid: auth.uid, email: auth.info.email
    else
      usuario = Usuario.from_omniauth(auth)
      flash[:success] = 'Você logou pelo Facebook com sucesso!'

      sign_in usuario

      Thread.new do
        usuario.facebook_update
        ActiveRecord::Base.connection.close
      end
      
      if usuario.password_digest.nil?
        redirect_to controller: "usuarios", action: "edit_password", id: usuario.id
      else
        redirect_to root_url
      end
    end
  end

  def destroy
    sign_out
    flash[:success] = "Você deslogou com sucesso!"
    redirect_to root_url
  end

  private

end
