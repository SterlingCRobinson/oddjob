class UsersController < ApplicationController
	
	def show
		@user = User.find_by_id(params[:id])
	end

	def edit
		@user = User.find_by_id(params[:id])
	end

	def update
		@user = User.find_by_id(params[:id])
		if @user.update(user_params)
			redirect_to @user
		end
	end

	private

	def user_params
	    params.require(:user).permit(:fname, :lname, :description, :email, :avatar, :id)
	end
end
