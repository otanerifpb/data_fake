json.extract! article, :id, :titulo, :autor, :resumo, :universidade, :created_at, :updated_at
json.url article_url(article, format: :json)
