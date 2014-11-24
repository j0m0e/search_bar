class BarsController < ApplicationController

	def search 
		session[:zip_code] = params[:zip_code]
		redirect_to "/quiz_images/1"
	end	

	def results
		find_quiz_results = QuizImage.quiz_results(session[:value_array])
		@search_results = SearchAPI.search_for_bar(find_quiz_results, session[:zip_code])
	end	

end
