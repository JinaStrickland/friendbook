class CommentsController < ApplicationController

    skip_before_action :verify_authenticity_token

    def index 
        comments = Comment.all 
        render json: comments
    end

    def show 
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create 
        comment = Comment.create(params[:id])
        render json: comment
    end

    def update 
        comment = Comment.find(params[:id])
        comment.update(comment_params)
        render json: comment
    end

    def destroy 
        comment = Comment.find(params[:id])
        comment.destroy 
        render json: {message: "The comment has been deleted"}  
    end

    private 
    def comment_params 
        params.require(:comment).permit(:comment, :likes, :post_id, :user_id)
    end

end
