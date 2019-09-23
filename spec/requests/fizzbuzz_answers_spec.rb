require "rails_helper"

RSpec.describe "Fizzbuzz Answers", type: :request do
  describe "GET fizzbuzz_answers" do
    it "provides fizzbuzz results up to the value passed in" do
      get fizzbuzz_answers_path(value: 3)

      expect(response).to have_http_status :ok
      expect(json_response).to eq ["1", "2", "Fizz"]
    end

    # TODO: accept multiple params
    # have fail because controller memoizes result of expensive calculation
  end

  def json_response
    JSON.parse(response.body)
  end
end
