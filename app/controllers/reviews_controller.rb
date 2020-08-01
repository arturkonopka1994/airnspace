class ReviewsController < ApplicationController
    def new
      @review = Review.new
    end
    
    def create
      @spaceship = Spaceship.find(params[:reviews_id])
      @review = Review.new(review_params)
      @review.spaceship = @spaceship
      if @review.save
        redirect_to spaceship_path(@spaceship)
      else
        @spaceship = Spaceship.new
        render "reviews/show"
      end
    end

    def destroy
      @review = Review.find(params[:id])
      @review.destroy
      redirect_to reviews_path
    end
  
    private
  
    def review_params
      params.require(:review).permit(:description, :rating)
    end
  end
