require 'rails_helper'

RSpec.describe :Post, :type => :model do
  context "In general, it" do
    it "belongs to users" do
      expect(Post.reflect_on_association(:user).macro).to eq(:belongs_to)
    end
    it "should have many comments" do
      expect(Post.reflect_on_association(:comment).macro).to eq(:has_many)
    end
  end

  context "When a post is created, it" do
    it "should create a post successfully"
    it "should not be valid without a user"
    it "should not be valid without a title"
    it "should not be valid without a body"
  end
end
