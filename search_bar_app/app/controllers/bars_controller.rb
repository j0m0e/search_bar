class BarsController < ApplicationController

	def search
		session[:zip_code] = params[:zip_code]
<<<<<<< HEAD
		@search_results	= SearchAPI.search_for_bar("dive bars", session[:zip_code])
=======
>>>>>>> ce09a43935169b306f722dca60db9b0ce06946a2
	end	


	def results	
<<<<<<< HEAD
		@search_results	= SearchAPI.search_for_bar("dive bars", session[:zip_code])
=======
		@search_results	= SearchAPI.search_for_bar("divebars", session[:zip_code])
	
>>>>>>> ce09a43935169b306f722dca60db9b0ce06946a2
	end


end
