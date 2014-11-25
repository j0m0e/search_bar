class SearchAPI 
# Method that searches by: 
# Zipcode
# Category_Filter: Formal to Casual
# Open today
# 3 star rating and above
# Sort by best match or highest rated
# Need a term in method - (bar)
# method that returns results based on that search 
	
	def self.make_client
	client = Yelp::Client.new({ consumer_key: 'dZJPaWyOc0QI2LV0_IiFgw' ,
                            consumer_secret: 'pSH96gUah8_5trIEnuWMENKiiP0',
                            token: '4RvQDhd44HhAJdefTKeW3rmwGjs5MbG-',
                            token_secret:'6tkuLz4ppLJrhiPou8SBbMy-E_8'
                          })
	end

	def self.search_for_bar(quiz_results, location) 
		parameters = { term: "bars",
								 category_filter: quiz_results,
								 location: location,
								 limit: 3}
		client = make_client
		results = client.search(location, parameters).to_json
		parsed_results = JSON.parse(results)
	end

# returns 3 results in an array of JSON objects

end
