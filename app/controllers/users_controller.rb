class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
    
  end

  def add_bar
    @user = User.find(session[:current_user_id])
    binding.pry
    redirect_to @user  
  end 

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
