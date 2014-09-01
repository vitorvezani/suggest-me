class SuggestionsController < ApplicationController
  
  def index

    @project_name = "Suggest Me!"

    @ultimos_usuarios = Usuario.all.order(last_login: :desc).limit(5)
    @ultimos_itens = Item.all.order(last_visited: :desc).limit(5) 
  end

  def enviar_contato  
    email = params[:email]
    msg =  params[:msg]
    ContatoMailer.contato(email, msg).deliver  
    flash[:success] = 'Contato enviado com sucesso!'
    redirect_to root_url
  end 

end
