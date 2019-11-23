class ProductsController < ApplicationController
	
  def index
  	@products = Product.all
  end

  def show
  	@product = Product.find(params[:id])
  	@review = Review.new
  	@reviews = @product.reviews
  end
end
