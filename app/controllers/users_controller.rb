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
    if session[:current_user_id] == nil 
      redirect_to '/'
    else
    user = User.find(session[:current_user_id])
    @businesses = user.bars.all
    end
  end

  def add_bar
    user = User.find(session[:current_user_id])
    bar = Bar.find_or_create_by(business_id: params[:business_id])
    user.add_bar(bar)
    redirect_to user  
  end 

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
