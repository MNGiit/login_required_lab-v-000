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
    redirect_to "login" if params[:name].empty?
  end
  
  def destroy
    session.clear
  end
end
