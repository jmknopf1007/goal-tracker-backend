class UsersController < ApplicationController

    # def index
    #     users = User.all 
    #     render :json => users 
    # end
    
    def show
        user = User.find(params[:id])
        render :json => user
    end

    def create
        #byebug
        user = User.create(user_params)
        render :json => { user: UserSerializer.new(user), jwt: issue_token(user) }, status: :accepted   
    end

    # def update
    #     user = User.find(params[:id])
    #     user.update(user_params)
    #     render :json => user
    # end

    # def destroy
    #     user = User.find(params[:id])
    #     user.destroy
    #     render :json => {status: 'deleted'}
    # end

    # def user_objectives
    #     user = User.find(params[:id])
    #     objectives = user.objectives 
    #     render :json => {objectives: objectives} 
    # end

    private

    def user_params
      params.require(:user).permit(:fullname, :username, :password, :password_confirmation)
    end

end
