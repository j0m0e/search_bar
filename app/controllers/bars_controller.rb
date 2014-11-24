class BarsController < ApplicationController

	def search 
		session[:zip_code] = params[:zip_code]
		@search_results	= SearchAPI.search_for_bar("divebars", session[:zip_code])
		render :results
	end	

end
