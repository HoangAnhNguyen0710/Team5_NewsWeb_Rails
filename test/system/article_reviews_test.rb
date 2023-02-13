require "application_system_test_case"

class ArticleReviewsTest < ApplicationSystemTestCase
  setup do
    @article_review = article_reviews(:one)
  end

  test "visiting the index" do
    visit article_reviews_url
    assert_selector "h1", text: "Article reviews"
  end

  test "should create article review" do
    visit article_reviews_url
    click_on "New article review"

    fill_in "Article", with: @article_review.article_id
    fill_in "Review", with: @article_review.review
    fill_in "User", with: @article_review.user_id
    click_on "Create Article review"

    assert_text "Article review was successfully created"
    click_on "Back"
  end

  test "should update Article review" do
    visit article_review_url(@article_review)
    click_on "Edit this article review", match: :first

    fill_in "Article", with: @article_review.article_id
    fill_in "Review", with: @article_review.review
    fill_in "User", with: @article_review.user_id
    click_on "Update Article review"

    assert_text "Article review was successfully updated"
    click_on "Back"
  end

  test "should destroy Article review" do
    visit article_review_url(@article_review)
    click_on "Destroy this article review", match: :first

    assert_text "Article review was successfully destroyed"
  end
end
