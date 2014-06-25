class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create

    @article = current_dietitian.articles.new(article_params)
    if @article.save
      redirect_to @article
    else
        render 'new'
    end
  end


  def index

    @articles = current_dietitian.articles.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private
  def article_params
  params.require(:article).permit(:title, :content)

  end

end
