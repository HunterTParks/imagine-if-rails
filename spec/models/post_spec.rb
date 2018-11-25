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
    before(:each) do
      create(:user)
    end

    it "should create a post successfully" do
      user = User.first
      post = create(:post, user: user)
      expect(post).to be_valid
    end
    it "should not be valid without a user" do
      post = build(:post, user: nil)
      expect(post).to_not be_valid
    end
    it "should not be valid without a title" do
      user = User.first
      post = build(:post, user: user, title: nil)
      expect(post).to_not be_valid
    end
    it "should not be valid without a body" do
      user = User.first
      post = build(:post, user: user, body: nil)
      expect(post).to_not be_valid
    end
  end
end
