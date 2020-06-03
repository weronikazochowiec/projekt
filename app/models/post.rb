class Post < ApplicationRecord
  belongs_to :user_blog
  belongs_to :location
  has_many :comments
  has_and_belongs_to_many :categories

  has_attached_file :image, :styles => { :medium =>"300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image,:content_type => /\Aimage\/.*\Z/

end
