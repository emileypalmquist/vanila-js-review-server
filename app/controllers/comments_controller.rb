class CommentsController < ApplicationController
    def index
        comments = Comment.all 
        render json: comments
    end

    def create
        comment = Comment.create(comments_params)
        if comment.valid?
            render json: comment
        else
            render json: {error: 'did not create comment. Try again!'}
        end
    end

    private

    def comments_params
        params.require(:comment).permit(:content, :image_id)
    end
end
