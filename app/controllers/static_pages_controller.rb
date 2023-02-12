class StaticPagesController < ApplicationController
  def home
    @breakingNews = Article.limit(4).order(created_at: :desc)
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
