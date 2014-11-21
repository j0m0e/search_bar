class BarsController < ApplicationController

	def results
		@search_results	= SearchAPI.search_for_bar("dive bar", session[:zip_code])
	end




end
