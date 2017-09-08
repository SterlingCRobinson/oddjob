class HomeController < ApplicationController
	def index
		@user = User.find_by(params[:id])
	end

	private

	def user_params
	    params.require(:user).permit(:fname, :lname, :email, :description, :avatar, :id)
	end
end
