class BarsController < ApplicationController

	def search 
		session[:zip_code] = params[:zip_code]
		if session[:current_user_id]
			@user = User.find(session[:current_user_id])
		end
		@search_results	= SearchAPI.search_for_bar("divebars", session[:zip_code])
		render :results
	end	

end
