class ReviewsController < InheritedResources::Base



	def create
		@review = current_user.reviews.build(review_params)
		if @review.save
			flash[:success] = "Thanks for the review #{current_user.name} and happy shopping"
			redirect_back(fallback_location: @review.product)
		end
	end

  private

    def review_params
      params.require(:review).permit(:product_id, :content)
    end

end
