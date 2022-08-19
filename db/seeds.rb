# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

List.create(name: "comdy")

puts "Cleaning database..."
Movie.destroy_all

puts "Creating Movies..."

arr = []
20.times do
  rNumber = rand(1.0..10.0).round(1)
  arr << { title: attributesFaker::Movie.title,
           overview: Faker::Movie.quote,
           poster_url: "https://picsum.photos/200/300",
           rating: rNumber}
end

arr.each do |attributes|
  movie = Movie.create!(attributes)
  puts "Created #{movie.title}"
end
puts "Finished!"
