require 'rails_helper'

RSpec.describe :Post, :type => :model do
  context "In general, it" do
    it { expect(Post.reflect_on_association(:user).macro).to eq(:belongs_to) }
  end
end
