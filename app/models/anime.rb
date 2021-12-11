class Anime < ApplicationRecord
    has_one_attached :image
    has_many :anime_comment, -> { order "created_at DESC"}
end
