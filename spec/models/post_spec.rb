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
    end
    it "should not be valid without a user" do
    end
    it "should not be valid without a title" do
    end
    it "should not be valid without a body" do
    end
  end
end
