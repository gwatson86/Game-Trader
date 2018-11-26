class WantsController < ApplicationController
    def index
        @wants = Want.all
        render json: @wants
    end

    def show
        @want = Want.find(params[:id])
        render json: @want
      end

    def create
        @new_want = Want.new(want_params)

        if @new_want.valid?
            @new_want.save
        else
            flash[:errors] = @new_want.errors.full_messages
        end

        render json: @new_want
    end

    private

    def want_params
        params.require(:want).permit(:user_id, :game_id)
    end
end
