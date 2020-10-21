class UsersController < ApplicationController

    skip_before_action :verify_authenticity_token

    def index 
        users = User.all 
        render json: users.to_json({include: {posts: {include: {comments: {only: [:comment, :likes, :id]}}, only: [:post, :likes, :created_at, :id]}}})
    end

    def show 
        user = User.find(params[:id])
        render json: user.to_json({include: {posts: {include: {comments: {only: [:comment, :likes, :id]}}, only: [:post, :likes, :created_at, :id]}}})
    end

    def create 
        user = User.create(params[:id])
        render json: user
    end

    def update 
        user = User.find(params[:id])
        user.update(user_params)
        render json: user 
    end

    private 
    def user_params 
        params.require(:user).permit(:name, :email, :image)
    end

end
