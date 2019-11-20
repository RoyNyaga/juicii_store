class PaymentsController < ApplicationController

	def new 
		@payment = Payment.new
	end

	def create
		@payment = current_user.payments.new(payment_params)
		if @payment.valid?
			Transaction.pay(@payment.phone, @payment.amount)
			@payment.save
			flash[:success] = "dial *126# to accept payment"
			redirect_back(fallback_location: root_path)
		else
			flash[:info] = "please enter a correct phone number and a valid amount"
			render "payments/new"
		end
	end  

	private

	def payment_params
		params.require(:payment).permit(:phone, :amount)
	end 
end
