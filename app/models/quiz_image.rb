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


end
