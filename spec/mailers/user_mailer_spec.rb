require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  pending "add some examples to (or delete) #{__FILE__}"
  describe "#welcome_email" do
    it "sends the mailer" do
      user = OpenStruct.new(email: "test@example.com")
      email = UserMailer.with(user: user).welcome_email

      assert_emails 1 do
        email.deliver_now
      end
    end
  end
end
