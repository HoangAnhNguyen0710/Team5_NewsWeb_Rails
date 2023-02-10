class Article < ApplicationRecord
    belongs_to :category, class_name: "category", foreign_key: "category_id"
    belongs_to :user, class_name: "user", foreign_key: "user_id"
end
