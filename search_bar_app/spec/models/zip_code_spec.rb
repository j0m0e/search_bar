require 'rails_helper' 

describe ZipCode do
	let(:zipcode) { ZipCode.new( zipcode: "10009")}
	
  it "is valid with a zipcode" do
    expect(zipcode).to be_valid
  end
end

