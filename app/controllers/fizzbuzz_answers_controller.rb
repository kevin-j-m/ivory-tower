class FizzbuzzAnswersController < ApplicationController
  def index
    if params[:value].is_a? Array
      render json: multiple_results
    else
      render json: result(params[:value].to_i)
    end
  end

  private

  def multiple_results
    params[:value].each_with_object({}) do |value, results|
      results[value.to_i] = result(value.to_i)
    end
  end

  def result(value)
    @result ||= Costly.result(value)
  end
end
