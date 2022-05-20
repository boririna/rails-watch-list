# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  movie = Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Address.street_address,
    poster_url: Faker::Internet.url,
    rating: rand(1..5)
    # chef_name: ['Alain Ducasse', 'Pierre Gagnaire', 'Martin Berasategui', 'Yannick Alleno', 'Anne-Sophie Pic'].sample
  )
  puts "Created restaurant #{movie.title}"
end
