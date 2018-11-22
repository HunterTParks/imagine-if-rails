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
    it "should not be valid without a username" do
      expect(User.new(username: nil, email: "test@test.com", password: "qwerty123")).to_not be_valid
    end
    it "should not be valid without an email" do
      expect(User.new(username: "test", email: nil, password: "qwerty123")).to_not be_valid
    end
    it "should not be valid without a password" do
      expect(User.new(username: "test", email: "test@test.com", password: nil)).to_not be_valid
    end
  end
end
