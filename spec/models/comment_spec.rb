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
end
