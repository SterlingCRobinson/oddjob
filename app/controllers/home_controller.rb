class HomeController < ApplicationController
def index
		@user = current_user
		@users = User.all.sort_by { |r| r.sorting_rating() }.first(5).reverse
end
	private

	def user_params
	    params.require(:user).permit(:fname, :lname, :email, :description, :avatar, :id)
	end
end