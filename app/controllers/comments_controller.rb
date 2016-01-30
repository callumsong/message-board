class CommentsController < ApplicationController

  def index
    @message = Message.find(params[:message_id])
    @comments = @message.comments
  end

  def create
    @message = Message.find(params[:id])
    @comment = @message.comment.create
    redirect_to messages_path
  end
end
