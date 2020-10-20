class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users.to_json({include: {posts: {only: [:post, :likes]}}})
    end

    def show 
        user = User.find(params[:id])
        render json: user.to_json({include: {posts: {only: [:post, :likes]}}})
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
