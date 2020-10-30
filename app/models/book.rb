class Book < ApplicationRecord
  before_save(:titleize_book)

  validates :title, :author, :price, presence: true

  scope :search, -> (title, author) { where("title ilike ? AND author ilike ?", "%#{title}%", "%#{author}%") }
  scope :bargain, -> { order(price: :asc).limit(3) }

  private
  def titleize_book
    self.name = self.name.titleize
  end
end



