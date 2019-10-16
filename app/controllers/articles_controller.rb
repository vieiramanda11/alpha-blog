class ArticlesController < ApplicationController

  def show
    @articles = Articles.all
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find_by(params[:id])
  end

  def destroy
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
end
