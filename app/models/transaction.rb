class Transaction
	include HTTParty
	base_uri "https://api.monetbil.com/payment/v1/placePayment"
	
	def self.pay(phone, amount)
		post("", body: { 
			service: "u7mFjGzx5Gn8UVMHYFgJgJP4oxNRMcXR",
			phonenumber: "#{phone}",
			amount: "#{amount}",
			notify_url: "http://localhost3000.org/monetbil/notifications"
		}.to_json)
	end
end 