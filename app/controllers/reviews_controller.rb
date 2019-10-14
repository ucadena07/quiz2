class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create

    @review = Review.new(allowed_params)

    if @review.save
        redirect_to reviews_path
    else
     render 'new'
    end
  end

  def show 
  end




  private

  def allowed_params 
    params.require(:review).permit(:name, :description)
  end




end
