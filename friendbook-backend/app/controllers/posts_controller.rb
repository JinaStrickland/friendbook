class PostsController < ApplicationController

    skip_before_action :verify_authenticity_token

    def index 
        posts = Post.all 
        render json: posts.to_json({include: {comments:{only:[:comment, :likes, :id]}}})
    end

    def show 
        post = Post.find(params[:id])
        render json: post.to_json({include: {comments:{only:[:comment, :likes, :id]}}})
    end

    def create 
        post = Post.create(post_params)
        render json: post
    end

    def update 
        post = Post.find(params[:id])
        post.update(post_params)
        render json: post
    end

    def destroy 
        post = Post.find(params[:id])
        post.destroy 
        render json: {message: "The post has been deleted"} 
    end

    private 
    def post_params 
        params.permit(:post, :likes, :user_id)
    end

end
