class SearchResultsController < ApplicationController

	def index
	
		if params[:search][:search].empty?
			flash[:info] = "Nothing To Search, Please enter a valid search content"
			redirect_back(fallback_location: root_path)
		else
			@parameter = params[:search][:search].downcase
			@product_search = Product.search(@parameter)
			@category_search = Category.search(@parameter)
			@search_result = @product_search.count + @category_search.count if params[:search][:search]
		end

		@categories = Category.all
		@products = Product.all		
	end

	private

end
