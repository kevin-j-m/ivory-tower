require "rails_helper"

RSpec.describe Testimonial do
  describe "#number_others_to_display" do
    it "excludes itself from the total that should be displayed" do
      display = instance_double(TestimonialDisplay, number_testimonials: 2)
      allow(TestimonialDisplay).to receive(:new).and_return(display)

      testimonial = Testimonial.new

      expect(testimonial.number_others_to_display).to eq 1
    end
  end
end
