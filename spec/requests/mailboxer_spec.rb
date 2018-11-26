require 'rails_helper'

RSpec.describe "Mailboxer", :type => :request do
  context "When a user sends a message, it" do
    before(:each) do
      create_list(:user, 2)
    end
    it "should successfully send a message" do
      user = User.first
      user2 = User.second
      body = "Body"
      subject = "Subject"

      post "/api/mailboxer/send_message", :receiver => user2, :subject => subject, :body => body
      message = get "/api/mailboxer/inbox"
      expect(message).to be(body)
      # user.send_message(user2, body, subject)
      # conversation = user2.mailbox.inbox.first
      # receipts = conversation.receipts_for user2
      # receipts.each do |receipt|
        # message = receipt.message
      # end
      # expect(message).to eq("Body")
    end
    it "should not be valid without a body"
    it "should not be valid without a user"
    it "should not be valid without a recipient"
  end
end
