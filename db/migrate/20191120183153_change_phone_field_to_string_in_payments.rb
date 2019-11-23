class ChangePhoneFieldToStringInPayments < ActiveRecord::Migration[5.2]
  def change
  	change_column :payments, :phone, :string
  end
end
