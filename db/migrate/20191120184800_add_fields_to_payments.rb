class AddFieldsToPayments < ActiveRecord::Migration[5.2]
  def change
  	add_column :payments, :delivery, :string
  	add_column :payments, :location, :string
  	add_column :payments, :account_name, :string
  	add_column :payments, :username, :string
  	add_column :payments, :products, :string
  end
end
