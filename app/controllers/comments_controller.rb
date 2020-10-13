class CommentsController < ApplicationController

    def create
        @comment = Comment.new comment_params
        @comment.account_id = current_account.id

        respond_to do |format|
            format.js {
                if @comment.save
                    render "messages/create"
                else
                end
            }
        end
    end

    private

    def comment_params
        params.require(:comnment).permit(:message, :post_id)
    end
end