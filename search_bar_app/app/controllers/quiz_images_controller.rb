class QuizImagesController < ApplicationController

	def form_1
		category_1_image_array = ([(QuizImage.where( :category => "clothing", :value => 1 ).sample),
															(QuizImage.where( :category => "clothing", :value => 2 ).sample),
															(QuizImage.where( :category => "clothing", :value => 3 ).sample),
															(QuizImage.where( :category => "clothing", :value => 4 ).sample)]).shuffle
		@quiz_image1 = category_1_image_array[0]
		@quiz_image2 = category_1_image_array[1]
		@quiz_image3 = category_1_image_array[2]
		@quiz_image4 = category_1_image_array[3]
		render :image_grid_one
	end	

	def form_1_submit
		session[:value_array] = []
		if session[:value_array].push(quiz_image_params[:value])
			redirect_to quiz_images_2_path
		else
			redirect_to '/'	
		end	
	end	

	def form_2
		render :image_grid_two
	end

	def form_2_submit
		binding.pry
		if session[:value_array].push(quiz_image_params[:value])
			redirect_to quiz_images_3_path
		else
			redirect_to '/'	
		end	
	end

	def form_3
		render :image_grid_three
	end

	def form_3_submit
		if session[:value_array].push(quiz_image_params[:value])
			redirect_to quiz_images_4_path
		else
			redirect_to '/'	
		end	
	end

	def form_4
		render :image_grid_four
	end

	def form_4_submit
		if session[:value_array].push(quiz_image_params[:value])
			redirect_to "/bars/results" # subject to change once we figure out how the result page will work
		else
			redirect_to '/'	
		end	
	end

	def quiz_image_params
		params.require(:quiz_image).permit(:name, :filepath, :category, :value)
	end	

end