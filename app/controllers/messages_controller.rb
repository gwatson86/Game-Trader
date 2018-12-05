class MessagesController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]

    def index
        @messages = Message.all
        render json: @messages
    end
    
    def show
        @message = Message.find(params[:id])
        render json: @message
    end

    def create
        @new_message = Message.create(message_params)

        render json: @new_message
    end

    private

    def message_params
        params.require(:message).permit(:content, :sender_id, :recipient_id)
    end
end