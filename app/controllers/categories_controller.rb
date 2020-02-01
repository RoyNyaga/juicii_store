class CategoriesController < ApplicationController
  def show
  	@category = Category.find(params[:id])
  	@category_products = @category.products
  end
end
