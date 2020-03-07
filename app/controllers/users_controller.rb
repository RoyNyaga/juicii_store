class UsersController < ApplicationController

	def show
		@user_transactions = current_user.payments
	end

	def edit
    	@user = current_user
  	end 

  	def update
    	@user = current_user
	    if @user.update_attributes(update_params)
	      flash[:success] = "Profile successfully updated"
	      redirect_to @user
	    else
	      render 'edit'
	    end
	end

	private

	def update_params
		params.require(:user).permit(:name, :email, :phone_number)
	end 


end 
