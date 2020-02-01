class AddTownToPayments < ActiveRecord::Migration[5.2]
  def change
  	add_column :payments, :town, :string
  end
end
