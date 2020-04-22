class StaticPagesController < ApplicationController
  def about
  end

  def services
  end

  def contact
  end

  def promotion
  	@promotion_products = Product.where(promotion: true)
  end 
end
