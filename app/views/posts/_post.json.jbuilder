json.extract! post, :id, :user_blog_id, :title, :content, :date, :time, :created_at, :updated_at
json.url post_url(post, format: :json)
