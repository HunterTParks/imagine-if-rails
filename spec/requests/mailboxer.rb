require 'rails_helper'

RSpec.describe "Mailboxer", :type => :request do
  context "When a user sends a message, it" do
    it "should successfully send a message"
    it "should not be valid without a body"
    it "should not be valid without a user"
    it "should not be valid without a recipient"
  end
end
