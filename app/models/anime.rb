class Anime < ApplicationRecord
    has_one_attached :image
    has_many :anime_comment, -> { order "created_at DESC"}
    validates :title, presence: true
    validates :author, presence: true
    validates :producer, presence: true
    validates :release, presence: true
    validates :genre, presence: true
    validates :url, presence: true
    validates :detail, presence: true
    validate :correct_image_type

    private

    def correct_image_type
        if image.attached? && !image.content_type.in?(%w(image/jpeg image/jpg image/-png))
            errors.add(:image, "must has a JPEG or PNG.")
        elsif image.attached? == false
            errors.add(:image, "must required.")
        end
    end
end
