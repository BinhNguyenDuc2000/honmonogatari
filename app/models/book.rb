class Book < ApplicationRecord
    has_one_attached :cover
    has_many :chapter, -> { order('chapter_order DESC') }
    has_many :book_review, -> { order "created_at DESC"}
    validates :title, :description, presence: true
end
