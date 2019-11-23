ActiveAdmin.register User do
  permit_params :name, :email, :phone_number, :password, :password_confirmation
  
end
