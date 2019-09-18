require "rails_helper"

RSpec.describe AccessKeyGenerator do
  describe "#access_key" do
    it "provides a base-64 encoded key if the key is for an acquired company" do
      generator = AccessKeyGenerator.new

      key = generator.access_key(accessor_type: :company, acquired_company: true)

      expect(key).to eq Base64.strict_encode64(Base64.decode64(key))
    end

    it "creates an ivory tower company access key if it's a company not acquired" do
      company_regex = /CO-[0-9a-fA-F]{8}/

      generator = AccessKeyGenerator.new
      key = generator.access_key(accessor_type: :company, acquired_company: false)

      expect(key.match?(company_regex)).to eq true
    end

    it "does not provide a full UUID if the key is for a company" do
      uuid_regex = /[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}/

      generator = AccessKeyGenerator.new
      key = generator.access_key(accessor_type: :company)

      expect(key.match?(uuid_regex)).not_to eq true
    end

    it "provides a UUID if the key is for a user with an even id" do
      uuid_regex = /[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}/

      generator = AccessKeyGenerator.new
      key = generator.access_key(accessor_type: :user, user_id: 2)

      expect(key.match?(uuid_regex)).to eq true
    end

    it "appends the user id if the user's id is odd" do
      generator = AccessKeyGenerator.new

      key = generator.access_key(accessor_type: :user, user_id: 1)

      expect(key).to end_with("-1")
    end

    it "does not provide a company key style if the key is for a user" do
      company_regex = /CO-[0-9a-fA-F]{8}/

      generator = AccessKeyGenerator.new
      key = generator.access_key(accessor_type: :user, user_id: 0)

      expect(key.match?(company_regex)).not_to eq true
    end

    it "raises an exception if it doesn't understand the accessor type" do
      generator = AccessKeyGenerator.new

      expect { generator.access_key(accessor_type: :foo) }
        .to raise_error UnknownAccessorType
    end
  end
end
