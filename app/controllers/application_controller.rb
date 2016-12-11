class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_login
    redirect_to '/sessions/new' if session[:user_id] == nil
  end
end

