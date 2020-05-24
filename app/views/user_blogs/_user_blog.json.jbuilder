json.extract! user_blog, :id, :user_id, :name, :created_at, :updated_at
json.url user_blog_url(user_blog, format: :json)
