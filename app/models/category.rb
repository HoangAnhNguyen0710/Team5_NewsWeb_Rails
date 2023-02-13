class Category < ApplicationRecord
    # has_many :articles, dependent: :destroy
    # has_many :users, :through => :articles
    extend FriendlyId
    friendly_id :category_name, use: :slugged

    validates :category_name, presence: true, uniqueness: true
end
