require "rails_helper"

RSpec.describe User, :type => :model do
  context "When creating a new user it..." do
    it "should create a user successfully" do
      user = create(:user)
      user2 = User.first
      expect(user).to eq(user2)
    end
    it "should return an error if not created successfully"
  end
end
