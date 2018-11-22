require 'rails_helper'

RSpec.describe Post, :type => :model do
  context "In general, it" do
    it { expect(Comment.reflect_on_association(:user).macro).to eq(:belongs_to) }
    it { expect(Comment.reflect_on_association(:post).macro).to eq(:belongs_to) }
  end
end
