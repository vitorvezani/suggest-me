class SuggestionsController < ApplicationController
  
  def index
  	
  	#render(:template => 'controller/action')
  	#render('controller/action')
  	#--
  	#redirect_to(:controler => 'controller', :action => 'action')
  	#redirect_to('action')
  	#render('hello') # nome do template 'view'
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
