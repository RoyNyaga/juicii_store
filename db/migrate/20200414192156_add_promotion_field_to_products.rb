class AddPromotionFieldToProducts < ActiveRecord::Migration[5.2]
  def change
  	add_column :products, :promotion, :boolean
  end
end
