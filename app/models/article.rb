class Article < ApplicationRecord
    belongs_to :category, foreign_key: "category_id"
    belongs_to :user, foreign_key: "user_id"
    has_one_attached :image
end