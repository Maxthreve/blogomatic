class ArticlesTagsController < ApplicationController
  def create
  #passes array of tag ids to asscosiate with the recipe

    @article = Article.find(params[:article_id])

    tags = params[:article][:tag_ids]

    @article.tags.clear
    tags.each do |t|
          @article.tags << Tag.find(t)

    end

    redirect_to articles_path
  end
end
