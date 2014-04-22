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

end
