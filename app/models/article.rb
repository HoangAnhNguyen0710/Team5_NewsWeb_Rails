class Article < ApplicationRecord
    belongs_to :category, foreign_key: "category_id"
    belongs_to :user, foreign_key: "user_id"
    validates :title, presence: true
    validates :content, presence: true
    validates :thumbnail, presence: true
    has_one_attached :thumbnail
end
