class Book < ApplicationRecord
  validates :title, :author, :price, presence: true
  scope :search, -> (title, author) { where("title ilike ? AND author ilike ?", "%#{title}%", "%#{author}%") }
  scope :bargain, -> { order(price: :asc).limit(3) }
end