require 'rails_helper' 

describe Bar do
	let(:bar) { Bar.new( business_id: "yelp-new-york")}
	
  it "is valid with a business_id" do
    expect(bar).to be_valid
  end
end

