class SessionsController < ApplicationController
  def new
  end
  
  def show
    if !session[:name].nil?
      
    else
      redirect_to "login"
    end
  end
  
  def create
    session[:name] = params[:name]
  end
  
  def destroy
    session.destroy(:name)
  end
end
