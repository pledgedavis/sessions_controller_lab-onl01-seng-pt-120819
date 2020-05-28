class SessionsController < ApplicationController
  def new
  end

  def create 
    session[:name] = params[:name]
    if session[:name] == nil || session[:name] == ""
      redirect_to controller: 'sessions', action: 'new'
    elsif session[:name]
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
  end
end
