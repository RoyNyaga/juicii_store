class AddDeliveryfeeToPayments < ActiveRecord::Migration[5.2]
  def change
  	add_column :payments, :delivery_fees, :integer
  end
end
