class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

 	def index
		@user = User.find_by(params[:id])
	end

	private

	def user_params
	    params.require(:user).permit(:fname, :lname, :email, :avatar, :id)
	end
end
