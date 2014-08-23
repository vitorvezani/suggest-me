class SuggestionsController < ApplicationController
  
  def index

    @project_name = "Suggest Me!"
    
  end

  def enviar_contato  
    email = params[:email]
    msg =  params[:msg]
    ContatoMailer.contato(email, msg).deliver  
    flash[:success] = 'Contato enviado com sucesso!'
    redirect_to root_url
  end 

end
