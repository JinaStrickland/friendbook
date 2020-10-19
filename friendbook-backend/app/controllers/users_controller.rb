class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users
    end

    def show 
        user = User.find(params[:id])
        render json: user 
    end

    def create 
        user = User.create(params[:id])
        render json: user
    end

    def update 
        user = User.update(params[:id])
        render json: user 
    end

    private 
    def user_params 
        params.require(:user).permit(:name, :email, :image)
    end

end
