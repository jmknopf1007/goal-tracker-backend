class Api::V1::AuthController < ApplicationController

    # Login
    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            # render json: {success: true}
            token = issue_token(user)
            render json: {user:UserSerializer.new(user), jwt: token}
        else
            render json: {error: 'User not found'}, status: 401
        end        
    end

    # Validate/Authenticate a current user
    def show 
        user = User.find_by( id: user_id )
        if logged_in?
            render json: { user:UserSerializer.new(user) }
        else 
            render json: {error: 'No user could be found'}, status: 401
        end
    end

end