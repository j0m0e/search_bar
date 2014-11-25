class BarsController < ApplicationController

	def search 
		session[:location] = params[:location]
		if session[:location] == ""
			redirect_to root_path
		else
			redirect_to "/quiz_images/1"
			session[:categories_seen] = []
			session[:value_array] = []
		end
	end	

	def results
		find_quiz_results = QuizImage.quiz_results(session[:value_array])
		@search_results = SearchAPI.search_for_bar(find_quiz_results, session[:location])
	end	

end
