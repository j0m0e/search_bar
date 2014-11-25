class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:current_user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def show
<<<<<<< HEAD
    
   if session[:current_user_id] != params[:id].to_i 
||||||| merged common ancestors
   if session[:current_user_id] == nil 
=======
    if session[:current_user_id] == nil 
>>>>>>> 99ecbc52046fe05c7b74368abad55dae9d6821d2
      redirect_to root_path
    else
      user = User.find(params[:id])
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
