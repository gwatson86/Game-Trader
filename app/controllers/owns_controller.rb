class OwnsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]

    def index
        @owns = Own.all
        render json: @owns  
    end
    
    def show
        @own = Own.find(params[:id])
        render json: @own
    end

    def create
        @new_own = Own.create(own_params)

        # if @new_own.valid?
        #     @new_own.save
        # else
        #     flash[:errors] = @new_own.errors.full_messages
        # end

        render json: @new_own
    end

    private

    def own_params
        params.require(:own).permit(:user_id, :game_id)
    end
end
