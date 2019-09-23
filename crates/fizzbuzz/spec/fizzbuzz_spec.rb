require "fizzbuzz"

describe "Fizzbuzz" do
  it "provides a collection with the element if only counting to 1" do
    expect(Fizzbuzz.generate(1)).to eq ["1"]
  end
end
