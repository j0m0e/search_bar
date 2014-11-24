require 'rails_helper' 

describe User do
	let(:ross) { User.new( username: "rossw",
                         password: "hello",
                         password_confirmation: "hello")}
	
  it "is valid with a username and password" do
    expect(ross).to be_valid
  end
end

