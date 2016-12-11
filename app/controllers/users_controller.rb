class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  
  def index
    @users = User.all
  end

  def new
  end

  def create
    if @user = User.create(user_params)
      redirect_to "/users/#{@user.id}"
    else
      redirect_to "/users/new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
