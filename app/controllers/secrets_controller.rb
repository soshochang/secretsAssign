class SecretsController < ApplicationController
  before_action :require_login, only: [:index, :create, :destroy]

  def index
  	@secrets = Secret.all
  	@current_user = current_user
  end

  def new
  end

  def create
  	@secret = Secret.create(content:params[:secret][:content], user_id:session[:user_id])
  	redirect_to "/users/#{session[:user_id]}"
  end

  def destroy
  	@secret = Secret.find(params[:id])
  	@secret.destroy if @secret.user == current_user
  	# redirect_to "/users/#{session[:user_id]}"
  	redirect_to "/users/#{current_user.id}"
  end
end
