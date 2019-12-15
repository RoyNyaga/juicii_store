class AddedPictureFieldToCategories < ActiveRecord::Migration[5.2]
  def change
  	add_column :categories, :photos, :string
  end
end
