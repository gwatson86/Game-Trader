class MessagesController < ApplicationController
    def index
        @messages = Message.all
        render json: @messages
    end
    
    def show
        @message = Message.find(params[:id])
        render json: @message
    end

    def create
        @new_message = Message.new(message_params)

        if @new_message.valid?
            @new_message.save
        else
            flash[:errors] = @new_message.errors.full_messages
        end

        render json: @new_message
    end

    private

    def message_params
        params.require(:message).permit(:content, :sender_id, :recipient_id)
    end
end