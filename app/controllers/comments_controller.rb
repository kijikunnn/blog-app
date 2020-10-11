class CommentsController < ApplicationController
  def create
    # raise params.inspect
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)

    redirect_to article_path(@article)
  end

  def destroy
    # raise params.inspect
    @comment = Comment.find params[:id]
    @comment.destroy
  
    redirect_to article_path(params[:article_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end