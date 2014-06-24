class CommentsController < ApplicationController
  def index
    @comments = Comment.where(parent: nil)
  end

  def create
    @comment = Comment.create!(params.require(:comment).permit(:body, :parent_id))
    redirect_to :comments
  end

  def destroy
    Comment.find(params[:id]).destroy!
    redirect_to :comments
  end
end
