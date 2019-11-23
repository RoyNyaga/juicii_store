class PaymentsController < ApplicationController
	before_action :authenticate_user!

	def index
		@payments = current_user.payments
	end 

	def new 
		@payment = Payment.new
	end

	def create
		@payment = current_user.payments.new(payment_params)
		if @payment.valid?
			# Transaction.pay(@payment.phone, @payment.amount)
			@payment.save
			flash[:notice] = "dial *126# to accept payment"
			redirect_to payments_path
		else
			flash[:info] = "please enter a correct phone number and a valid amount"
			render "payments/new"
		end
	end  

	private

	def payment_params
		params.require(:payment).permit(:phone, :amount, :delivery, 
			:location, :delivery_fees, :account_name, :products, :username)
	end 
end

