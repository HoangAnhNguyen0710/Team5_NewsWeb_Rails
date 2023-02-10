class Category < ApplicationRecord
    has_many :articles, class_name: "article"
end
