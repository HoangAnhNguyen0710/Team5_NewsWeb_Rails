class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_many :articles
  # has_many :categories, :through => :articles
  has_one_attached :avatar
  validates :name, presence: true
  # has_many :comments, dependent: :destroy
end
