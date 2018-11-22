require 'rails_helper'

RSpec.describe :Message, :type => :model do
  context "In general, it" do
    it "belongs to users" do
      expect(Message.reflect_on_association(:user).macro).to eq(:belongs_to)
    end
  end
  context "When creating a message, it" do
    it "should create a message successfully"
    it "should not be valid without a first user"
    it "should not be valid without a second user"
    it "should not be valid without a body"
  end
end
