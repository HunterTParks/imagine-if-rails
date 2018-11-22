require "rails_helper"

RSpec.describe User, :type => :model do
  context "When creating a new user it..." do
    it "should create a user successfully" do
      expect(create(:user)).to be_valid
    end
    it "should return an error if not created successfully"
    it "should have posts" do
      user = User.reflect_on_association(:posts)
      expect(user.macro).to eq(:has_many)
    end
  end
end
