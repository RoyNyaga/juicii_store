ActiveAdmin.register Payment do

  permit_params :phone, :amount, :delivery, 
      :location, :delivery_fees, :account_name, :products, :username
  
end
