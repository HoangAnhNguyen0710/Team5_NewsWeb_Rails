json.extract! article, :id, :title, :category_id, :content, :user_id, :display, :thumbnail, :created_at, :updated_at
json.url article_url(article, format: :json)
