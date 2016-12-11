class LikesController < ApplicationController
	before_action :require_login, only: [:create, :destroy]

	def create
		if Like.where(user:@current_user, secret_id:params[:secret_id]).count == 0 
			Like.create(secret_id:params[:secret_id], user:current_user)
			redirect_to '/secrets'
		end
	end

	def destroy
		if l = Like.find(params[:id])
			if l.user == current_user
				if l.destroy
					redirect_to '/secrets'
				end
			end	
		end
	end
end
