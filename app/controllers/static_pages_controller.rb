class StaticPagesController < ApplicationController
  def home
    @lastest_news = Article.order("created_at DESC").limit(4)
    @flash_news = Article.joins(:category).order("articles.created_at DESC").limit(3).group("categories.id")
  end
end
