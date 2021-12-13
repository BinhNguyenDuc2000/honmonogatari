class Book < ApplicationRecord
    has_one_attached :cover
    has_many :chapter, -> { order('chapter_order DESC') }
    belongs_to :category
    validates :title, :description, presence: true
end
