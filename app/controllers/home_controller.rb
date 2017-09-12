class HomeController < ApplicationController
	def index
		@user = current_user
		@users = User.includes(:rate_average_without_dimension).limit(5).order("rating_caches.avg desc")
	end

	private

	def user_params
	    params.require(:user).permit(:fname, :lname, :email, :description, :avatar, :id)
	end
end
