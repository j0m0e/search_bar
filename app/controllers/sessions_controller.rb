class SessionsController < ApplicationController

  def new
     
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      redirect_to '/'
    else
      @errors = "username and/or password are incorrect"
      render :new
    end

  end

  def destroy
    session[:current_user_id] = nil
    redirect_to '/'
  end
end
