class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create

    @article = Article.new(article_params)
    @article.save
    #render plain: article_params.inspect
    redirect_to articles_show(@article)
  end

  private
    def article_params
      params.require(:article).permit(:title,:description)
    end

end
