class QuizImagesController < ApplicationController

	def form
		remaining_categories = QuizImage.generate_unique_categories.delete_if do |category| 
			session[:categories_seen].include?(category)
		end
		current_category = remaining_categories.sample
		page_image_array = QuizImage.get_quiz_images_for_category(current_category)

		@category_1_quiz_image1 = page_image_array[0]
		@category_1_quiz_image2 = page_image_array[1]
		@category_1_quiz_image3 = page_image_array[2]
		@category_1_quiz_image4 = page_image_array[3]
		
		session[:categories_seen].push(current_category)
		
		render :image_grid
	end	

	def form_submit
		session[:value_array].push((params[:value]).to_i)
		if session[:categories_seen].count < 5
			redirect_to quiz_images_path
		else
			redirect_to results_path
		end		
	end	

	def quiz_image_params
		params.require(:quiz_image).permit(:name, :filepath, :category, :value)
	end	

end