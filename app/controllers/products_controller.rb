class ProductsController < ApplicationController
#  before_action :authenticate_user!, only: [:show]	
  def index
  	@home_page_products = Product.where(advert: true)
    @home_page_promotion_products = Product.where(promotion: true)
    @all_category = Category.all
    @user = User.new
  end

  def show

  	@product = Product.find_by(id: params[:id])
    @product_category = @product.category.products

  	if @product == nil
  		flash[:danger] = "product does not exist"
  		redirect_to root_path
  	else
  		@review = Review.new
  		@reviews = @product.reviews
  	end  	
  end

end
