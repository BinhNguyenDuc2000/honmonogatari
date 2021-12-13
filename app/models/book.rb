class Book < ApplicationRecord
    has_one_attached :cover
    has_many :chapter, -> { order('chapter_order DESC') }
    validates :title, :description, presence: true
end
