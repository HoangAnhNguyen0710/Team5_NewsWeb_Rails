class StaticPagesController < ApplicationController
  def home
  end

  def category
    @article = Article.where(category: params[:id].to_i)
  end
end
