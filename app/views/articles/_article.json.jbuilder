json.extract! article, :id, :title, :description, :category_id, :user_id, :image, :created_at, :updated_at
json.url article_url(article, format: :json)
