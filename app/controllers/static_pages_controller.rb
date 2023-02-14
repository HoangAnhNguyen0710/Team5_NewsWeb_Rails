class StaticPagesController < ApplicationController
  def home
    @lastest_news = Article.order("created_at DESC").limit(4)
  end
end
