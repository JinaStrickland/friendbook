class PostsController < ApplicationController

    def index 
        posts = Post.all 
        render json: posts.to_json({include: {comments:{only:[:comment, :likes]}}})
    end

    def show 
        post = Post.find(params[:id])
        render json: post
    end

    def create 
        post = Post.create(params[:id])
        render json: post
    end

    def update 
        post = Post.update(params[:id])
        render json: post
    end

    def destroy 
        post = Post.find(params[:id])
        post.destroy 
        render json: {message: "The post has been deleted"} 
    end

    private 
    def post_params 
        params.require(:post).permit(:post, :likes, :user_id)
    end

end
