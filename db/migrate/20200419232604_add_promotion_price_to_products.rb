class AddPromotionPriceToProducts < ActiveRecord::Migration[5.2]
  def change
  	add_column :products, :pro_price, :string
  end
end
