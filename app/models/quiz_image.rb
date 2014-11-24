class QuizImage < ActiveRecord::Base
  validates :value, presence: true
  validates :filepath, presence: true, uniqueness: true
  validates :category, presence: true

	def self.generate_category_1_image_array
		category_1_image_array = ([(QuizImage.where( :category => "clothing", :value => 1 ).sample),
																(QuizImage.where( :category => "clothing", :value => 34 ).sample),
																(QuizImage.where( :category => "clothing", :value => 67 ).sample),
																(QuizImage.where( :category => "clothing", :value => 100 ).sample)]).shuffle
		return category_1_image_array
	end

	def self.generate_category_2_image_array
		category_2_image_array = ([(QuizImage.where( :category => "tv_show", :value => 1 ).sample),
																(QuizImage.where( :category => "tv_show", :value => 34 ).sample),
																(QuizImage.where( :category => "tv_show", :value => 67 ).sample),
																(QuizImage.where( :category => "tv_show", :value => 100 ).sample)]).shuffle
		return category_2_image_array
	end

	def self.generate_category_3_image_array
		category_1_image_array = ([(QuizImage.where( :category => "clothing", :value => 1 ).sample),
																(QuizImage.where( :category => "clothing", :value => 34 ).sample),
																(QuizImage.where( :category => "clothing", :value => 67 ).sample),
																(QuizImage.where( :category => "clothing", :value => 100 ).sample)]).shuffle
		return category_1_image_array
	end

	def self.generate_category_4_image_array
		category_1_image_array = ([(QuizImage.where( :category => "clothing", :value => 1 ).sample),
																(QuizImage.where( :category => "clothing", :value => 34 ).sample),
																(QuizImage.where( :category => "clothing", :value => 67 ).sample),
																(QuizImage.where( :category => "clothing", :value => 100 ).sample)]).shuffle
		return category_1_image_array
	end

	def self.quiz_results(value_array)
		quiz_total = (((value_array).reduce(:+))/2).round
		if quiz_total.between?(1,25)
			return @quiz_results = "divebars,poolhalls"
		elsif quiz_total.between?(26,50)
			return @quiz_results = "pubs,sportsbars,irish_pubs"
		elsif quiz_total.between?(51,75)
			return @quiz_results = "wine_bars,pianobars,lounges"
		elsif quiz_total.between?(76,100)
			return @quiz_results = "champagne_bars,cocktailbars"	
		end			
	end
	




end
