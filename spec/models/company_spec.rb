require "rails_helper"

RSpec.describe Company do
  it { is_expected.to validate_presence_of :name }

  describe "#generate_access_key" do
    it "provides a base-64 encoded key if the key is for an acquired company" do
      company = Company.new(acquisition: true)

      key = company.generate_access_key

      expect(key).to eq Base64.strict_encode64(Base64.decode64(key))
    end

    it "creates an ivory tower company access key if it's a company not acquired" do
      company_regex = /CO-[0-9a-fA-F]{8}/

      company = Company.new(acquisition: false)
      key = company.generate_access_key

      expect(key.match?(company_regex)).to eq true
    end

    it "does not provide a full UUID if the key is for a company" do
      uuid_regex = /[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}/

      company = Company.new
      key = company.generate_access_key

      expect(key.match?(uuid_regex)).not_to eq true
    end
  end
end
