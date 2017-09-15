class RegistrationsController < Devise::RegistrationsController


	private

	  def sign_up_params
	    params.require(:user).permit(:fname, :lname, :description, :email, :password, :password_confirmation, :avatar)
	  end

	  def account_update_params
	    params.require(:user).permit(:fname, :lname, :description, :email, :current_password, :avatar)
	  end
end
