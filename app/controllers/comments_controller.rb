class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to post_path(@comment.post_id)
  end

  def destroy
     @comment = Comment.find(params[:id])
     @comment.destroy
  end

private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end

end
