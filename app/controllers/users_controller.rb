class UsersController < ApplicationController
  before_action :set_user

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @library = @user.library
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password, :photo)
  end
end
