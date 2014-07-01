class TagsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @tag = Tag.where(name: (tag_params["name"])).first_or_create
    if @tag.save
      @article.tags << @tag
      redirect_to article_path(@article)
    else
        render 'new'
    end
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
