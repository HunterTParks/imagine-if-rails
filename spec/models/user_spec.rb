require "rails_helper"

RSpec.describe User, :type => :model do
  context "In General, it" do
    it "should have many messages" do
      expect(Admin.reflect_on_association(:message).macro).to eq(:has_many)
    end
    it "should have many comments" do
      expect(User.reflect_on_association(:comment).macro).to eq(:has_many)
    end
    it "should have posts" do
      user = User.reflect_on_association(:posts)
      expect(user.macro).to eq(:has_many)
    end
  end
  context "When creating a new user it..." do
    it "should create a user successfully" do
      expect(create(:user)).to be_valid
    end
    it "should not be valid without a username"
    it "should not be valid without an email"
    it "should not be valid without a password"
  end
end
