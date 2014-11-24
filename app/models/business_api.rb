class BusinessAPI < ActiveRecord::Base


	
	# makes client object which allows access to yelp api
	def self.make_client
		client = Yelp::Client.new({ consumer_key: 'dZJPaWyOc0QI2LV0_IiFgw' ,
                            consumer_secret: 'pSH96gUah8_5trIEnuWMENKiiP0',
                            token: '4RvQDhd44HhAJdefTKeW3rmwGjs5MbG-',
                            token_secret:'6tkuLz4ppLJrhiPou8SBbMy-E_8'
                          })
	end

	#retrieves business info by business id
	def self.retrieve_business(business_id)
		client = make_client
		business = client.business(business_id).to_json
		parsed_business = JSON.parse(business)
	end

	



end

