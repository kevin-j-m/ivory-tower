require "fizzbuzz"

describe "Fizzbuzz" do
  it "provides a collection with the element if only counting to 1" do
    expect(Fizzbuzz.generate(1)).to eq ["1"]
  end

  it "replaces the number with Fizz if it's divisible by 3" do
    expect(Fizzbuzz.generate(3)).to eq ["1", "2", "Fizz"]
  end

  it "replaces the number with Buzz if it's divisible by 5" do
    expect(Fizzbuzz.generate(5)).to eq ["1", "2", "Fizz", "4", "Buzz"]
  end
end
