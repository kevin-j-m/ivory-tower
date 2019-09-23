class FizzbuzzAnswersController < ApplicationController
  def index
    render json: result(params[:value].to_i)
  end

  private

  def result(value)
    @result ||= Costly.result(value)
  end
end
