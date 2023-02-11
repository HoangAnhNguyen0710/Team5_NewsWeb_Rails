class StaticPagesController < ApplicationController
  def home
  end

  def category
    @articles = Article.where(category: params[:id].to_i)
  end
end
