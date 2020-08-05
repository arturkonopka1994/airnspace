class ReviewsController < ApplicationController
    def new
      @spaceship = Spaceship.find(params[:spaceship_id])
      @review = Review.new
    end
    
    def create
      @spaceship = Spaceship.find(params[:spaceship_id])
      @review = Review.new(review_params)
      @review.spaceship = @spaceship
      @review.user = current_user
      if @review.save!
        redirect_to spaceship_path(@spaceship)
      else
        @spaceship = Spaceship.new
        render "spaceship/show"
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
