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
    before(:each) do
      create(:user)
      user = User.first
      create(:post, user: user)
    end

    it "should create a comment successfully" do
      user = User.first
      post = Post.first
      comment = create(:comment, user: user, post: post)
      expect(comment).to_not be_valid
    end
    it "should not be valid without a message" do
      user = User.first
      post = Post.first
      comment = build(:comment, user: user, post: post, message: nil)
      expect(comment).to_not be_valid
    end
    it "should not be valid without a user" do
      user = User.first
      post = Post.first
      comment = build(:comment, user: nil, post: post)
      expect(comment).to_not be_valid
    end
  end
end
