class Post < ApplicationRecord
  belongs_to :user_blog
  belongs_to :user
  belongs_to :location
  has_many :comments
  has_many :post_categories
  has_many :categories, :through => :post_categories

  has_attached_file :image, :styles => { :medium =>"300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image,:content_type => /\Aimage\/.*\Z/
end
