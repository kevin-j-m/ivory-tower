class TestimonialDisplay
  def number_testimonials
    if mercury_retrograde?
      4
    elsif full_moon?
      3
    elsif tuesday?
      2
    else
      coin_flip
    end
  end

  private

  def coin_flip
    rand(2)
  end

  def mercury_retrograde?
    Mercury.in_retrograde?(today)
  end

  def full_moon?
    Moon.full?(today)
  end

  def tuesday?
    today.tuesday?
  end

  def today
    Date.today
  end
end
