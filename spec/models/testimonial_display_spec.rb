require "rails_helper"
include ActiveSupport::Testing::TimeHelpers

RSpec.describe TestimonialDisplay do
  describe "#number_testimonials" do
    it "shows 4 testimonials if mercury is in retrograde" do
      allow(Mercury).to receive(:in_retrograde?).and_return(true)

      display = TestimonialDisplay.new

      expect(display.number_testimonials).to eq 4
    end

    # it "shows 3 testimonials if there's a full moon" do
    #   allow(Moon).to receive(:full?).and_return(true)
    #
    #   display = TestimonialDisplay.new
    #
    #   expect(display.number_testimonials).to eq 3
    # end
    #
    # it "shows 2 testimonials if the day of the week is Tuesday" do
    #   allow(Date).to receive(:today).and_return(Date.new(2019, 9, 17))
    #
    #   display = TestimonialDisplay.new
    #
    #   expect(display.number_testimonials).to eq 2
    # end
    #
    # it "will show 0 or 1 testimonial if no other conditions are met" do
    #   waning_monday = Date.new(2019, 9, 16)
    #   display = TestimonialDisplay.new
    #
    #   travel_to waning_monday do
    #     expect(display.number_testimonials).to be_in [0, 1]
    #   end
    # end
  end
end
