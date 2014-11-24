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

  # def remove_zip_code
  #   User = User.find(params[:id])
  #   zip_code = ZipCode.find(params[:zip_code_id])
  #   User.remove_zip_code(zip_code)
    
  #   redirect_to user_path
  # end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
