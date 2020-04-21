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
		@buea = 1000
		@tiko = 1500
		@limbe = 2000
		@payment = current_user.payments.new(payment_params)
		@amount = @payment.amount
		@fees = 0
		mtn = ["237651","237651", "237652", "237653",
			"237654", "237670", "237671", "237672", 
			"237673", "237674","237675", "237676", 
			"237677", "237678", "237679", "237680", "237681", 
			"237682", "237683", "237684", "237685", "237686", "237687", 
			"237688", "237689"]
		orange = ["237655", "237656", "237657", "237658", 
			"237659", "237690", "237691", "237692", 
			"237693", "237694", "237695","237696", "237697", 
			"237698", "237699"]
		nextel = ["237660", "237661", "237662", "237663", 
			"237664", "237665", "237666", "237667", "237668", 
			"237669"]
		camtel = ["237222", "237233", "237242", "237243"]
		
		if @payment.town == "Buea"
			@amount += @buea
			@fees = @buea
		elsif @payment.town == "Tiko"
			@amount += @tiko
			@fees = @tiko
		elsif @payment.town == "Limbe"
			@amount += @limbe
			@fees = @limbe
		end

		if @payment.valid?
			# Transaction.pay(@payment.phone, @amount)
			@payment.amount = @amount
			@payment.delivery_fees = @fees
			@payment.save
			number_type = @payment.phone.slice(0,6)
			if mtn.include?(number_type)
				flash[:success] = "You will receive a request confirmation message from MTN in some few seconds if not dial *126# to validate payment"
				redirect_to current_user
			elsif orange.include?(number_type) 
				flash[:success] = "You will receive a request confirmation message from Orange in some few seconds if not dial --- to validate payment"
				redirect_to current_user
			elsif camtel.include?(number_type)
				flash[:danger] = "Nextel payments not allowed"
				redirect_to current_user
			elsif
				flash[:danger] = "Camtel payments not allowed"
				redirect_to current_user
			end  
		else
			flash[:danger] = "Invalide Phone Number, enter phone number with no spaces and cameroon based numbers, ex: 237682879062"
			render "payments/new"
		end
	end  

	private

	def payment_params
		params.require(:payment).permit(:phone, :amount, :delivery, :town, 
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

