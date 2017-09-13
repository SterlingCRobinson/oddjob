class HomeController < ApplicationController
def index
		@user = current_user
		@users = User.all.sort_by { |r| r.sorting_rating() }.reverse.first(5)
end
	private

	def user_params
	    params.require(:user).permit(:fname, :lname, :email, :description, :avatar, :id)
	end
end