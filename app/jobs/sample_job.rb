class SampleJob < ApplicationJob
  def perform
    Fizzbuzz.generate(100)
  end
end
