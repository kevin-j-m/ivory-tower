require "rails_helper"

RSpec.describe "Fizzbuzz Answers", type: :request do
  describe "GET fizzbuzz_answers" do
    it "provides fizzbuzz results up to the value passed in" do
      get fizzbuzz_answers_path(value: 3)

      expect(response).to have_http_status :ok
      expect(json_response).to eq ["1", "2", "Fizz"]
    end

    it "handles multiple values if many are passed in" do
      get fizzbuzz_answers_path(value: [3, 4])

      expect(json_response.keys).to match_array(["3", "4"])
    end
  end

  def json_response
    JSON.parse(response.body)
  end
end
