class BarsController < ApplicationController

	def search
		session[:zip_code] = params[:zip_code]
		@search_results	= SearchAPI.search_for_bar("dive bar", session[:zip_code])
		binding.pry
	end	


	def results	
		
	end


end
