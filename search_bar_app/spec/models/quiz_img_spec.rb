require 'rails_helper' 

describe QuizImg do
	let(:image) { QuizImg.new( name: "photo1",
                         		 value: "1",
                         		 filepath: "hello"
                         		 category: )}
	
  it "is valid with a name, value, filepath and category" do
    expect(image).to be_valid
  end
end

