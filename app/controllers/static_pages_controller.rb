class StaticPagesController < ApplicationController
  def home
    @lastest_news = Article.order("created_at DESC").limit(4)
    @category = Category.all
    @articlesByCategory = []
    @category.each do |category|
      @articlesByCategory[category.id] = Article.where(category_id: category.id)
    end
  end

  def category
    @articles = Article.where(category: params[:id].to_i)
  end
end
