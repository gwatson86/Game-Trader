require 'rest-client'

class GamesController < ApplicationController
    def index
        response_string = RestClient.get("https://api-endpoint.igdb.com/games/", {
            "user-key": "5d8bfe0b9295fbe3a4e3e8d8c8d70522",
            Accept: "application/json"
        })
        response_hash = JSON.parse(response_string)
        render json: response_hash
    end

    def show
        @game = Game.find(params[:id])
        render json: @game
    end

    def create
        @new_game = Game.new(game_params)

        if @new_game.valid?
            @new_game.save
        else
            flash[:errors] = @new_game.errors.full_messages
        end

        render json: @new_game
    end

    private

    def game_params
        params.require(:game).permit(:name, :console)
    end
end