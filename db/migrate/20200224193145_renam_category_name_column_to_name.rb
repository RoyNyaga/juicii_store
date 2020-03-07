class RenamCategoryNameColumnToName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :categories, :category_name, :name
  end
end
