class CommentsController < ApplicationController

  def index
    @message = Message.find(params[:message_id])
    @comments = @message.comments
  end

  def create
    @comment = Comment.new(comment_params)
    redirect_to messages_path
  end

  private
    def comment_params
      params.require(:comment).permit(:comment_text, :message_id)
    end

end
