class Testimonial
  def initialize(message = nil)
    @message = message
  end

  def message=(message)
    @message = message
  end

  def message
    @message
  end

  def number_others_to_display
    total = TestimonialDisplay.new.number_testimonials
    total - 1
  end
end
