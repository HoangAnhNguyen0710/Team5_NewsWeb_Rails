json.extract! article_review, :id, :user_id, :article_id, :review, :created_at, :updated_at
json.url article_review_url(article_review, format: :json)
