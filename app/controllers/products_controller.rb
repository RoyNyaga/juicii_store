class ProductsController < ApplicationController
	
  def index
  	@home_page_product = Product.where(advert: true)
  end

  def show

  	@product = Product.find_by(id: params[:id])

  	if @product == nil
  		flash[:danger] = "product does not exist"
  		redirect_to root_path
  	else
  		@review = Review.new
  		@reviews = @product.reviews
  	end  	
  end

end
