class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
        render json: @reviews
    end

    def show
        @review = Review.find(params[:id])
        render json: @review
    end
    
    def create
        @new_review = Review.new(review_params)
        
        if @new_review.valid?
            @new_review.save
        else
            flash[:errors] = @new_review.errors.full_messages
        end

        render json: @new_review
    end

    def update
        @review.update(review_params)
        if @review.save
            render json: @review, status: :accepted
        else
            render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
        end
    end
    
    private

    def review_params
        params.require(:review).permit(:reviewname, :email)
    end
end
