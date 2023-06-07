# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Component.destroy_all
Collaboration.destroy_all
Item.destroy_all
Topic.destroy_all
Theme.destroy_all

puts "Creating users..."
user1 = User.new(email: "pierro@gmail.com", password: "123456")
# user1.photo.attach(io: file_profile_one, filename: "avatar.pic", content_type: "image/png")
user1.save

puts 'Creating themes...'
travel = Theme.new(title: "Travel", description: "Best places to travel to !", user_id: user1.id)
travel.save!

puts 'Creating themes...'
travel = Theme.new(title: "Travel", description: "Best places to travel to !", user_id: user1.id)
travel.save!

puts 'Finished!'
