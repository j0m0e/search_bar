class BarsController < ApplicationController

	def search
		session[:zip_code] = params[:zip_code]
		@search_results	= SearchAPI.search_for_bar("dive bars", session[:zip_code])
	end	


	def results	
	@search_results	= SearchAPI.search_for_bar("dive bars", session[:zip_code])
	@search_results	= SearchAPI.search_for_bar("divebars", session[:zip_code])
	end


end

