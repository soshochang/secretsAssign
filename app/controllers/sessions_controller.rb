class SessionsController < ApplicationController
  def create
  	if flash[:errors] == nil
			flash[:errors] = []
		end

  	if @user = User.find_by_email(params[:session][:email])
  		if @user.authenticate(params[:session][:password])
  			session[:user_id] = @user.id
  			redirect_to "/users/#{@user.id}"
  		else
  			flash[:errors] << "Invalid password"
  			redirect_to '/users/new'
  		end
  	else
  		flash[:errors] << "Invalid email"
  		redirect_to '/users/new'
  	end
  end

  def destroy
  	session.clear
  	redirect_to '/sessions/new'
  end

end
