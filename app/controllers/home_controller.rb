class HomeController < ApplicationController
	def index
		@user = current_user
	end

	private

	def user_params
	    params.require(:user).permit(:fname, :lname, :email, :description, :avatar, :id)
	end
end
