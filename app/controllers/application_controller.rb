class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def 
    render online: "<h1>Hola ,this is only a test in the controller</h1>"
  end
  
end
