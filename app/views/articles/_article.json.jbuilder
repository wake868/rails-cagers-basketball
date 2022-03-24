json.extract! article, :id, :title, :slug, :rank, :body, :blurb, :created_at, :updated_at
json.url article_url(article, format: :json)
