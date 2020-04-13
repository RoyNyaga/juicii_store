class DeleteAdvertColumnFromProducts < ActiveRecord::Migration[5.2]
  def change
  	remove_column :products, :advert
  end
end
