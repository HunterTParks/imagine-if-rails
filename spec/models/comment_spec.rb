require 'rails_helper'

RSpec.describe Post, :type => :model do
  context "In general, it" do
    it "should belong to users" do
      expect(Comment.reflect_on_association(:user).macro).to eq(:belongs_to)
    end
    it "should belong to posts" do
      expect(Comment.reflect_on_association(:post).macro).to eq(:belongs_to)
    end
  end

  context "When creating a comment, it" do
    it "should create a comment successfully"
    it "should not be valid without a first user"
    it "should not be valid without a second user"
    it "should not be valid without a body"
  end
end
