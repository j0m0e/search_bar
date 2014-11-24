class SearchAPI 

# Category_Filter: Formal to Casual


	
	# allows access to Yelp API
	def self.make_client
		client = Yelp::Client.new({ consumer_key: 'dZJPaWyOc0QI2LV0_IiFgw' ,
                            consumer_secret: 'pSH96gUah8_5trIEnuWMENKiiP0',
                            token: '4RvQDhd44HhAJdefTKeW3rmwGjs5MbG-',
                            token_secret:'6tkuLz4ppLJrhiPou8SBbMy-E_8'
                          })
	end

	# searches Yelp API for 3 bars specified by quiz results and zipcode. Returns best match by default.
	def self.search_for_bar(quiz_results, zip_code) 
		parameters = { term: "bars",
								 category_filter: quiz_results,
								 location: zip_code,
								 limit: 3}
		client = make_client
		results = client.search(zip_code, parameters).to_json
		parsed_results = JSON.parse(results)
	end



end


