require "rails_helper"

RSpec.describe SampleJob do
  describe "#perform" do
    it "fizzbuzzes up to 100" do
      allow(Fizzbuzz).to receive(:generate)

      SampleJob.perform_now

      expect(Fizzbuzz).to have_received(:generate).with(100)
    end
  end
end
