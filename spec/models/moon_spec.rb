require "rails_helper"

RSpec.describe Moon do
  describe ".full?" do
    it "is not full" do
      expect(Moon.full?(Date.today)).to be false
    end
  end
end
