class QuizImage < ActiveRecord::Base
  validates :value, presence: true
  validates :filepath, presence: true, uniqueness: true
  validates :category, presence: true

  def self.generate_random_array_of_five
   main_array = [ [QuizImage.where( category: "jackets")], [QuizImage.where( category: "tv_shows")],
   [QuizImage.where( category: "drinks")], [QuizImage.where( category: "shoes")], [QuizImage.where( category: "coffees")] ]
  end		 

  def self.random_array_of_five
    random_array_of_five = ((QuizImage.generate_random_array_of_five).shuffle).sample(5)
  end 

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
