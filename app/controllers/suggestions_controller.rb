class SuggestionsController < ApplicationController
  


  def index
  	
  	#render(:template => 'controller/action')
  	#render('controller/action')
  	#--
  	#redirect_to(:controler => 'controller', :action => 'action')
  	#redirect_to('action')
  	#render('hello') # nome do template 'view'
  end

  def hello
  	#redirect_to(:controller => 'csuggestions, :action => 'index')
  	@id = params['id']
  	@page = params[:page]
  end

  def lynda
  	redirect_to('http://suggestme.net')
  end

end
