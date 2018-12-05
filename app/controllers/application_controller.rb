class ApplicationController < ActionController::Base
    # skip_before_action :authorized, only: [:profile_init]
    before_action :authorized

    def encode_token(payload)
        JWT.encode(payload, 'somestring')
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'somestring')
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end

    def logged_in?
        !!current_user
    end

    def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end

    def profile_init
        @user = current_user
        
        # render json: {user: @user.to_json(include: [:owns, :wants]), users: User.all.to_json(include: [:owns, :wants])}
        render json: User.all, include: [:owns, :wants]
    end
end
