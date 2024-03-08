class ReviewsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @review = Review.new
    @review.save
    redirect_to list_path(@list)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
