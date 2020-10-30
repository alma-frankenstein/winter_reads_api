class Book < ApplicationRecord
  before_create(:titleize_book)

  validates :title, :author, :price, presence: true

  scope :search, -> (title, author) { where("title ilike ? AND author ilike ?", "%#{title}%", "%#{author}%") }
  scope :bargain, -> { order(price: :asc).limit(3) }

  private
  def titleize_book
    self.title = self.title.titleize
  end
end



