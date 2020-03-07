class RegistrationsController < Devise::RegistrationsController


	private

	def sign_up_params
		params.require(:user).permit(:name, :email, :phone_number, :password, :password_confirmation)
	end

	def account_update_params
		# params.require(:user).permit(:name, :email, :phone_number, :password, :password_confirmation, :current_password)
		params.require(:user).permit(:name, :email, :phone_number)
	end 
end 