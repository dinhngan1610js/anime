json.extract! anime, :id, :title, :author, :producer, :release, :genre, :url, :created_at, :updated_at
json.url anime_url(anime, format: :json)
