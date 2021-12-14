class Chapter < ApplicationRecord
    belongs_to :book
    belongs_to :user
    has_one_attached :picture
    validates :title, :content, :chapter_order, presence: true
end
