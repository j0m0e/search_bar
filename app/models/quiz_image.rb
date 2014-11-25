class QuizImage < ActiveRecord::Base
  validates :value, presence: true
  validates :filepath, presence: true, uniqueness: true
  validates :category, presence: true

  def self.generate_main_array
   main_array = [ [QuizImage.where( category: "jackets")], [QuizImage.where( category: "tv_shows")],
   [QuizImage.where( category: "drinks")], [QuizImage.where( category: "shoes")], [QuizImage.where( category: "coffees")] ]
  end		 

  def self.random_array_of_five
    random_array_of_five = ((QuizImage.generate_main_array).shuffle).sample(5)
  end 

  # def self.generate_page_image_arrays
  # 	page1_image_array = (QuizImage.random_array_of_five[0][0]).shuffle
  # 	page2_image_array = (QuizImage.random_array_of_five[1][0]).shuffle
  # 	page3_image_array = (QuizImage.random_array_of_five[2][0]).shuffle
  # 	page4_image_array = (QuizImage.random_array_of_five[3][0]).shuffle
  # 	page5_image_array = (QuizImage.random_array_of_five[4][0]).shuffle
  # 	image_arrays = [page1_image_array, page2_image_array, page3_image_array, page4_image_array, page5_image_array]
  # 	return image_arrays
  # end	


	def self.quiz_results(value_array)
		quiz_total = (((value_array).reduce(:+))/5).round
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
