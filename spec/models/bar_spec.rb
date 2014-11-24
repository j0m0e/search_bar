require 'rails_helper' 

describe Bar do
	let(:yelpbar) { Bar.new( business_id: "yelp-bar-new-york")}
	
  it "is valid with a business_id" do
    expect(yelpbar).to be_valid
  end
end

