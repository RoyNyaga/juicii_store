class RemoveThreePicFieldsFromProducts < ActiveRecord::Migration[5.2]
  def change
  	remove_column :products, :pictureOne
  	remove_column :products, :pictureTwo
  	remove_column :products, :pictureThree

  end
end
