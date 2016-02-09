class ArticlesController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
  end

  def show
  end

  def new
    @category = Category.find(params[:category_id])
    @article = Article.new
  end

  def edit
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:article_id])
  end

  def create
    @category = Category.find(params[:category_id])
    @article = @category.articles.create(article_params)
    redirect_to category_articles_path(@category)
  end

  def update
    @article = Article.find(params[:article_id])
    @article.update(article_params)
    # if you want to keep working on this, use redirect_to
  end

  def destroy
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
