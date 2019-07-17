class ReviewsController < ApplicationController

  def create
    @review = review.new(review_params)
    @review.save
    redirect_to review_path(@reviews)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
