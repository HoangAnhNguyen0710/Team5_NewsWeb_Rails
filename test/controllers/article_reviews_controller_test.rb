require "test_helper"

class ArticleReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article_review = article_reviews(:one)
  end

  test "should get index" do
    get article_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_article_review_url
    assert_response :success
  end

  test "should create article_review" do
    assert_difference("ArticleReview.count") do
      post article_reviews_url, params: { article_review: { article_id: @article_review.article_id, review: @article_review.review, user_id: @article_review.user_id } }
    end

    assert_redirected_to article_review_url(ArticleReview.last)
  end

  test "should show article_review" do
    get article_review_url(@article_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_review_url(@article_review)
    assert_response :success
  end

  test "should update article_review" do
    patch article_review_url(@article_review), params: { article_review: { article_id: @article_review.article_id, review: @article_review.review, user_id: @article_review.user_id } }
    assert_redirected_to article_review_url(@article_review)
  end

  test "should destroy article_review" do
    assert_difference("ArticleReview.count", -1) do
      delete article_review_url(@article_review)
    end

    assert_redirected_to article_reviews_url
  end
end
