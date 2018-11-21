require "rails_helper"

RSpec.describe User, :type => :model do
  context "When creating a new user it..." do
    it "should create a user successfully" do
      expect(create(:user)).to be_valid
    end
    it "should return an error if not created successfully"
  end
end
