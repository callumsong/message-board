class CommentsController < ApplicationController

  before_action :set_comment, only: [:show, :destroy]

  def index
    @message = Message.find(params[:message_id])
    @comments = @message.comments
  end

  def create
    @message = Message.find(params[:message_id])
    @comment = @message.comments.create(comment_params)
    redirect_to messages_path
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to messages_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def show
  end

  private

    def set_comment
      @comment = Comment.find(params[:id])
    end
    def comment_params
      params.require(:comment).permit(:comment_text, :message_id)
    end

end
