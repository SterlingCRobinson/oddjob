class UsersController < ApplicationController

	def show
		@user = User.find_by_id(params[:id])
	end

	private

	def user_params
	    params.require(:user).permit(:fname, :lname, :email, :avatar, :id)
	end
end
