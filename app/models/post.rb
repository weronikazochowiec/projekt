class Post < ApplicationRecord
  belongs_to :user_blog
  belongs_to :user
  belongs_to :location
  has_many :comments
  has_many :post_categories
  has_many :categories, :through => :post_categories
end
