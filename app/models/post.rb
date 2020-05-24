class Post < ApplicationRecord
  belongs_to :user_blog
  belongs_to :user
end
