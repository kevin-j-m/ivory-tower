require "rails_helper"

RSpec.describe Mercury do
  describe ".in_retrograde?" do
    it "is not in retrograde" do
      expect(Mercury.in_retrograde?(Date.today)).to be false
    end
  end
end
