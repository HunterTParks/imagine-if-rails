require "rails_helper"

RSpec.describe User, :type => :model do
  context "In General, it" do
    it { expect(User.reflect_on_association(:message).macro).to eq(:has_many) }
    it { expect(User.reflect_on_association(:comment).macro).to eq(:has_many) }
    it "should have posts" do
      user = User.reflect_on_association(:posts)
      expect(user.macro).to eq(:has_many)
    end
  end
  context "When creating a new user it..." do
    it "should create a user successfully" do
      expect(create(:user)).to be_valid
    end
  end
end
