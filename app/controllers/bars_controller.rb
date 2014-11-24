class BarsController < ApplicationController

	def search 
		redirect_to "/quiz_images/1"
	end	

	def results
		Bar.quiz_results(session[:value_array])
		@search_results = SearchAPI.search_for_bar(@quiz_results, session[:zip_code])
		binding.pry
	end	

end

		# if session[:current_user_id]
		# 	@user = User.find(session[:current_user_id])
		# end