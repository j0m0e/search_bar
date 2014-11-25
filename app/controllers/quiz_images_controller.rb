class QuizImagesController < ApplicationController

	def form_1
		page1_image_array = (QuizImage.random_array_of_five[0][0]).shuffle

		@category_1_quiz_image1 = page1_image_array[0]
		@category_1_quiz_image2 = page1_image_array[1]
		@category_1_quiz_image3 = page1_image_array[2]
		@category_1_quiz_image4 = page1_image_array[3]
		
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
		page2_image_array = (QuizImage.random_array_of_five[1][0]).shuffle

		@category_2_quiz_image1 = page2_image_array[0]
		@category_2_quiz_image2 = page2_image_array[1]
		@category_2_quiz_image3 = page2_image_array[2]
		@category_2_quiz_image4 = page2_image_array[3]
		
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
		page3_image_array = QuizImage.random_array_of_five[2][0]

		@category_3_quiz_image1 = page3_image_array[0]
		@category_3_quiz_image2 = page3_image_array[1]
		@category_3_quiz_image3 = page3_image_array[2]
		@category_3_quiz_image4 = page3_image_array[3]
		
		render :image_grid_three
	end

	def form_3_submit
		if session[:value_array].push((params[:value]).to_i)
			redirect_to quiz_images_4_path 
		else
			redirect_to '/'	
		end	
	end

	def form_4
		page4_image_array = QuizImage.random_array_of_five[3][0]

		@category_4_quiz_image1 = page4_image_array[0]
		@category_4_quiz_image2 = page4_image_array[1]
		@category_4_quiz_image3 = page4_image_array[2]
		@category_4_quiz_image4 = page4_image_array[3]
		
		render :image_grid_four
	end

	def form_4_submit
		if session[:value_array].push((params[:value]).to_i)
			redirect_to quiz_images_5_path 
		else
			redirect_to '/'	
		end	
	end

	def form_5
		page5_image_array = QuizImage.random_array_of_five[4][0]

		@category_5_quiz_image1 = page5_image_array[0]
		@category_5_quiz_image2 = page5_image_array[1]
		@category_5_quiz_image3 = page5_image_array[2]
		@category_5_quiz_image4 = page5_image_array[3]
		
		render :image_grid_five
	end

	def form_5_submit
		if session[:value_array].push((params[:value]).to_i)
			redirect_to results_path 
		else
			redirect_to '/'	
		end	
	end

	def quiz_image_params
		params.require(:quiz_image).permit(:name, :filepath, :category, :value)
	end	

end