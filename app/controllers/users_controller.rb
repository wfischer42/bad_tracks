class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      flash.now[:user_creation_error] = "That username is already taken."
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
