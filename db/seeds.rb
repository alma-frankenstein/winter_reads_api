# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all

10.times do |index|
  Book.create!(
    author: Faker::Book.author,
    title: "The " + Faker::Coffee.blend_name,
    price: rand(6..12)
  )
end

p "Created #{Book.count} books with Faker"
