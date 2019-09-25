# :nocov:
def number_testimonials(input)
  input.even? ? 2 : 1
end

def even_testimonial
  "This is great!"
end

def odd_testimonial
  "Never been better!"
end

def no_testimonial
  ""
end

[1, 2].each do |n|
  number_testimonials(n).times do
    if n.even?
      puts even_testimonial
    else
      puts odd_testimonial
    end
  end
end
# :nocov:
