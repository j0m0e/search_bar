class QuizImagesController < ApplicationController

	def form_1
		category_1_image_array = QuizImage.generate_category_1_image_array

		@category_1_quiz_image1 = category_1_image_array[0]
		@category_1_quiz_image2 = category_1_image_array[1]
		@category_1_quiz_image3 = category_1_image_array[2]
		@category_1_quiz_image4 = category_1_image_array[3]
		
		render :image_grid_one
	end	

	def form_1_submit
		session[:value_array] = []
		if session[:value_array].push((params[:value]).to_i)
			redirect_to quiz_images_2_path
		else
			redirect_to '/'	
		end	
	end	

	def form_2
		category_2_image_array = QuizImage.generate_category_2_image_array

		@category_2_quiz_image1 = category_2_image_array[0]
		@category_2_quiz_image2 = category_2_image_array[1]
		@category_2_quiz_image3 = category_2_image_array[2]
		@category_2_quiz_image4 = category_2_image_array[3]
		
		render :image_grid_two
	end

	def form_2_submit
		if session[:value_array].push((params[:value]).to_i)
			redirect_to quiz_images_3_path  
		else
			redirect_to '/'	
		end	
	end

	def form_3
		category_3_image_array = QuizImage.generate_category_3_image_array

		@category_3_quiz_image1 = category_3_image_array[0]
		@category_3_quiz_image2 = category_3_image_array[1]
		@category_3_quiz_image3 = category_3_image_array[2]
		@category_3_quiz_image4 = category_3_image_array[3]
		
		render :image_grid_three
	end

	def form_3_submit
		if session[:value_array].push((params[:value]).to_i)
			redirect_to results_path 
		else
			redirect_to '/'	
		end	
	end

	# def form_4
	# 	render :image_grid_four
	# end

	# def form_4_submit
	# 	if session[:value_array].push(quiz_image_params[:value])
	# 		redirect_to results_path # subject to change once we figure out how the result page will work
	# 	else
	# 		redirect_to '/'	
	# 	end	
	# end

	def quiz_image_params
		params.require(:quiz_image).permit(:name, :filepath, :category, :value)
	end	

end