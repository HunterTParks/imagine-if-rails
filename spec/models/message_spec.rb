require 'rails_helper'

RSpec.describe :Message, :type => :model do
  context "In general, it" do
    it "belongs to users" do
      expect(Message.reflect_on_association(:user).macro).to eq(:belongs_to)
    end
  end
end
