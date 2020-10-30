class UsersController < ApplicationController

    def index 
        @user = User.all 
        render json: @user, include: :responses
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: :responses
    end
    
    def create
        @user = User.new(user_params)

        if @user.save
            render json: @user, status: :created
        else
            render json: {errors: @user.errors.full_messages}
        end

    end

    private

    def user_params
        params.require(:user).permit(:name, :email)
    end
    
end
