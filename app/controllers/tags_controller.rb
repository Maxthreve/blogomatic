class TagsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.tags.create(tag_params)
    redirect_to article_path(@article)
  end
def destroy
  article = Article.find(params[:article_id])
  comment = article.tags.find(params[:id])
  comment.destroy
  redirect_to :back
end

  private
    def tag_params
      params.require(:tag).permit(:name, :description)
    end
end
