FactoryBot.define do
  factory(:book) do
    author {Faker::Book.author}
    title {Faker::Quote.yoda}
    price {rand(6..12)}
  end
end