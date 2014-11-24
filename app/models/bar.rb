class Bar < ActiveRecord::Base
  validates :business_id, presence: true, uniqueness: true

  has_and_belongs_to_many :users

  def self.quiz_results(value_array)
		quiz_total = (((value_array).reduce(:+))/2).round
		if quiz_total.between?(1,25)
			@quiz_results = "divebars,poolhalls"
		elsif quiz_total.between?(26,50)
			@quiz_results = "pubs,sportsbars,irish_pubs"
		elsif quiz_total.between?(51,75)
			@quiz_results = "wine_bars,pianobars,lounges"
		elsif quiz_total.between?(76,100)
			@quiz_results = "champagne_bars,cocktailbars"	
		end
		return @quiz_results			
	end

end
