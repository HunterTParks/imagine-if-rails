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
    it "should create a post successfully" do
      expect(create(:post).to be_valid)
    end
    it "should not be valid without a user" do
      expect(Post.new(user_id: nil, title: "test", body: "testing")).to_not be_valid
    end
    it "should not be valid without a title" do
      expect(Post.new(user_id: 1, title: nil, body: "testing")).to_not be_valid
    end
    it "should not be valid without a body" do
      expect(Post.new(user_id: 1, title: "test", body: nil)).to_not be_valid
    end
  end
end
