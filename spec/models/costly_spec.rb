require "rails_helper"

RSpec.describe Costly do
  describe ".result" do
    it "provides fizzbuzz results up to the number passed in" do
      allow(Fizzbuzz).to receive(:generate)

      Costly.result(3)

      expect(Fizzbuzz).to have_received(:generate).with(3)
    end
  end
end
