class PaymentsController < ApplicationController
	before_action :authenticate_user!
	before_action :collect_product_title_and_quantity, only: [:show]

	def index
		@payments = current_user.payments
	end 

	def new
		@payed_products = collect_product_title_and_quantity
		@cart = Cart.find(session[:cart_id])
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

	def collect_product_title_and_quantity
		@cart = Cart.find(session[:cart_id])
		@collection = ""
		@cart.line_items.each do |line_item|
			@collection += "#{line_item.quantity} #{line_item.product.title}, "

		end
		@collection  
	end

	def collect_amount

	end   
end

