json.extract! anime_comment, :id, :user_id, :anime_id, :comment, :created_at, :updated_at
json.url anime_comment_url(anime_comment, format: :json)
