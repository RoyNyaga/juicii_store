class AddAdvertToProducts < ActiveRecord::Migration[5.2]
  def change
  	add_column :products, :advert, :boolean
  end
end
