class SearchResultsController < ApplicationController

	def index
		if params[:search].blank?
			render "search_results/index"
		else
			@parameter = params[:search].downcase
			@product_search = Product.search(@parameter)
			@category_search = Category.search(@parameter)
			@search_result = @product_search.count + @category_search.count if params[:search]
		end		
	end
end
