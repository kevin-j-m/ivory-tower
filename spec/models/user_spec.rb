require "rails_helper"

RSpec.describe User do
  it { is_expected.to validate_presence_of :username }

  describe "#generate_access_key" do
    it "provides a UUID if the key is for a user with an even id" do
      uuid_regex = /[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}/

      user = User.new(id: 2)
      key = user.generate_access_key

      expect(key.match?(uuid_regex)).to eq true
    end

    it "appends the user id if the user's id is odd" do

      user = User.new(id: 1)
      key = user.generate_access_key

      expect(key).to end_with("-1")
    end

    it "does not provide a company key style if the key is for a user" do
      company_regex = /CO-[0-9a-fA-F]{8}/

      user = User.new(id: 0)
      key = user.generate_access_key

      expect(key.match?(company_regex)).not_to eq true
    end
  end
end
