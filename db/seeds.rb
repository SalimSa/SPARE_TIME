# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning database..."
# Component.destroy_all
# Collaboration.destroy_all
Component.destroy_all
LinkComponent.destroy_all
TextComponent.destroy_all
Collaboration.destroy_all
Item.destroy_all
puts "1"
Topic.destroy_all
puts "2"
Theme.destroy_all
puts "3"
User.destroy_all

file_one = URI.open("https://images.unsplash.com/photo-1500835556837-99ac94a94552?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHJhdmVsfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60")
file_two= URI.open("https://media.licdn.com/dms/image/D4E05AQEmNQA5S7tO4w/videocover-high/0/1683723241464?e=2147483647&v=beta&t=-yLWAit8QNkIZX9CgBrKTHONMBmxv72Rl6bb0-UxGnc")
file_three = URI.open("https://images.unsplash.com/photo-1481487196290-c152efe083f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d2Vic2l0ZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60")
file_four = URI.open("https://www.brcline.com/wp-content/uploads/2016/01/bootstrap-logo.png")
file_five = URI.open("https://images.unsplash.com/photo-1561632669-7f55f7975606?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80")
file_six = URI.open("https://images.unsplash.com/photo-1564221710304-0b37c8b9d729?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80")
file_seven = URI.open("https://images.unsplash.com/photo-1500759285222-a95626b934cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80")
file_eight = URI.open("https://www.oxfordwebstudio.com/user/pages/06.da-li-znate/sta-je-html/sta-je-html.jpg")
file_nine = URI.open("https://www.lego.com/cdn/cs/set/assets/blta7b7b825b6d4fc0a/75313_Prod.png?fit=bounds&format=webply&quality=80&width=320&height=320&dpr=2")
file_ten = URI.open("https://www.lego.com/cdn/cs/set/assets/bltf316536e3bacd03a/40478.jpg?format=webply&fit=bounds&quality=80&width=320&height=320&dpr=2")
file_eleven = URI.open("https://www.almanac.com/sites/default/files/styles/or/public/ruby-honored_member-shutterstock4c.jpg?itok=lbktb7a4")
file_twelve = URI.open("https://www.lego.com/cdn/cs/set/assets/blt60c4eccd637be544/76421.png?format=webply&fit=bounds&quality=80&width=320&height=320&dpr=2")
file_thirteen = URI.open("https://www.lego.com/cdn/cs/set/assets/blt2c408dc4fb192074/71043.jpg?format=webply&fit=bounds&quality=80&width=320&height=320&dpr=2")
file_fourteen = URI.open("https://images.unsplash.com/photo-1538448174498-9956c159edb0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fGxlZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1400&q=60")
file_fifteen = URI.open("https://images.unsplash.com/photo-1542831371-29b0f74f9713?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80")
file_sixteen = URI.open("https://i.ytimg.com/vi/1ZkwvPMiq4Q/sddefault.jpg")
file_seventeen = URI.open("https://images.unsplash.com/photo-1481487196290-c152efe083f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1924&q=80")
file_eighteen = URI.open("https://rubyonrails.org/assets/images/opengraph.png")
file_nineteen = URI.open("https://images.unsplash.com/photo-1609283040241-7a50dc4288bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bGVnbyUyMHNoaXB8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=700&q=60")
file_twenty = URI.open("https://images.unsplash.com/photo-1501854140801-50d01698950b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1950&q=80")
file_twenty_one = URI.open("https://images.unsplash.com/photo-1565438525268-adf2e49737e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bGVnbyUyMGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60")
file_twenty_two = URI.open("https://images.unsplash.com/photo-1638437447450-ae0e57c04b90?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1331&q=80")
file_twenty_three = URI.open("https://images.unsplash.com/photo-1531061682486-1fa5a7390f74?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTR8fGxlZ28lMjBzaGlwfGVufDB8fDB8fHww&auto=format&fit=crop&w=700&q=60")
file_twenty_four = URI.open("https://images.unsplash.com/photo-1632080167294-6b12a5091e72?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bGVnbyUyMGJvYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=700&q=60")
file_twenty_five = URI.open("https://images.unsplash.com/photo-1538448174498-9956c159edb0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fGxlZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1400&q=60")
file_twenty_six= URI.open("https://images.unsplash.com/photo-1609741199743-341cf4ee3d02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1527&q=80")
file_twenty_seven = URI.open("https://images.unsplash.com/photo-1584098180552-52082cd36982?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80")
file_twenty_eight = URI.open("https://images.unsplash.com/photo-1609741199743-341cf4ee3d02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1527&q=80")
file_twenty_nine = URI.open("https://images.unsplash.com/photo-1621453420564-04315be63900?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fGxlZ28lMjBidWlsZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60")
file_thirty= URI.open("https://images.unsplash.com/photo-1567329776387-a135c5ea2f75?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bGVnbyUyMGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60")
file_thirty_one= URI.open("https://images.unsplash.com/photo-1609283040241-7a50dc4288bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bGVnbyUyMHNoaXB8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=700&q=60")
file_thirty_two = URI.open("https://images.unsplash.com/photo-1600784574965-a2f558622fd9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=654&q=80")
file_thirty_three = URI.open("https://images.unsplash.com/photo-1565438525268-adf2e49737e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bGVnbyUyMGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60")
file_thirty_four = URI.open("https://images.unsplash.com/photo-1638437447450-ae0e57c04b90?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1331&q=80")
file_thirty_five = URI.open("https://images.unsplash.com/photo-1531061682486-1fa5a7390f74?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTR8fGxlZ28lMjBzaGlwfGVufDB8fDB8fHww&auto=format&fit=crop&w=700&q=60")
file_thirty_six = URI.open("https://images.unsplash.com/photo-1632080167294-6b12a5091e72?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bGVnbyUyMGJvYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=700&q=60")
file_thirty_seven = URI.open("https://images.unsplash.com/photo-1538448174498-9956c159edb0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fGxlZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1400&q=60")
file_forty_three = URI.open("https://www.brcline.com/wp-content/uploads/2016/01/bootstrap-logo.png")
file_forty_four = URI.open("https://colorlib.com/wp/wp-content/uploads/sites/2/creative-css3-tutorials.jpg")
# file_thirty_eight = URI.open("https://images.unsplash.com/photo-1609741199743-341cf4ee3d02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1527&q=80")
# file_thirty_nine= URI.open("https://images.unsplash.com/photo-1563823263008-ec7877629ba0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fGxlZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1400&q=60")

# file_profile_one = URI.open("https://avatars.githubusercontent.com/u/130742075?v=4")
# file_profile_two = URI.open("https://avatars.githubusercontent.com/u/127049580?v=4")
# file_profile_three = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1681458390/yxcic8ztciovogmeggii.jpg")
# file_profile_four = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1682988657/jaxntjbyuwnaxun5w6zv.jpg")
# file_profile_five = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1681732260/qpmfo6rolg2adugasfcf.jpg")

puts "Creating users..."

user1 = User.create(email: "pierre@gmail.com", password: "123456")
user2 = User.create(email: "marta@gmail.com", password: "123456")
user3 = User.create(email: "salim@gmail.com", password: "123456")
# user1.photo.attach(io: file_profile_one, filename: "avatar.pic", content_type: "image/png")


puts 'Creating themes...'
travel = Theme.new(title: "Travel", description: "Best places to travel to !", user: user2)
travel.photo.attach(io: file_one, filename: "theme.png", content_type: "image/png")
travel.save!

lewagon = Theme.new(title: "Le Wagon", description: "Learn new skills today. Build your career in tech.", user: user2)
lewagon.photo.attach(io: file_two, filename: "theme.png", content_type: "image/png")
lewagon.save!


puts 'Creating topics for travel...'
cuba = Topic.new(title: "Cuba", description: "Cuba is almost 500 years old and a riot of color.", theme: travel)
cuba.photo.attach(io: file_seven, filename: "topic.png", content_type: "image/png")
cuba.save!
spain = Topic.new(title: "Spain", description: "Spain is the country of dance and tapas.", theme: travel)
spain.photo.attach(io: file_five, filename: "topic.png", content_type: "image/png")
spain.save!


puts 'Creating topics for Le wagon...'
ruby = Topic.new(title: "Ruby", description: "The best programming language", theme: lewagon)
ruby.photo.attach(io: file_eleven, filename: "topic.png", content_type: "image/png")
ruby.save!

oop = Topic.new(title: "Object-oriented programming", description: "programming paradigm based on the concept of objects, which can contain data and code.", theme: lewagon)
oop.photo.attach(io: file_fifteen, filename: "topic.png", content_type: "image/png")
oop.save!

db = Topic.new(title: "The Database & Active Record ", description: "relational databases, discover the different relationships between tables (1:n, n:n) and how to draw a database scheme", theme: lewagon)
db.photo.attach(io: file_sixteen, filename: "topic.png", content_type: "image/png")
db.save!

front = Topic.new(title: "Front", description: "A lot of HTML & CSS concepts ", theme: lewagon)
front.photo.attach(io: file_seventeen, filename: "topic.png", content_type: "image/png")
front.save!

rails = Topic.new(title: "Rail ", description: "Rails is a full-stack framework. It ships with all the tools needed to build amazing web apps on both the front and back end.", theme: lewagon)
rails.photo.attach(io: file_eighteen, filename: "topic.png", content_type: "image/png")
rails.save!




puts 'Creating items for Cuba'
havana = Item.new(title: "Havana Oulala", description: "is a super cozy place at the bottom of Calle Muralla, just a stone through from the Plaza Vieja.", topic: cuba)
havana.photo.attach(io: file_twenty_seven, filename: "theme.png", content_type: "image/png")
havana.save!

puts 'Creating items for Ruby'
hashsymbols = Item.new(title: "hash & symbols", description: "A Hash is a dictionary-like collection of unique keys. For each key, a value is associated.", topic: ruby)
hashsymbols.photo.attach(io: file_three, filename: "theme.png", content_type: "image/png")
hashsymbols.save!
bootstrap = Item.new(title: "Bootstrap", description: "Bootstrap is a database that allows code to already exist.", topic: front)
bootstrap.photo.attach(io: file_forty_three, filename: "theme.png", content_type: "image/png")
bootstrap.save!
html = Item.new(title: "html", description: "html is a database that allows code to already exist.", topic: front)
html.photo.attach(io: file_eight, filename: "theme.png", content_type: "image/png")
html.save!
css = Item.new(title: "css", description: "css is a database that allows code to already exist.", topic: front)
css.photo.attach(io: file_forty_four, filename: "theme.png", content_type: "image/png")
css.save!
barcelona = Item.new(title: "Barcelona", description: "The perfect place for a boys weekend!", topic: spain)
barcelona.photo.attach(io: file_six, filename: "theme.png", content_type: "image/png")
barcelona.save!



image_url = "https://images.unsplash.com/photo-1538448174498-9956c159edb0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fGxlZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1400&q=60"

file_thirty_seven = URI.open("https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60")
file_thirty_eight = URI.open("https://images.unsplash.com/photo-1483412033650-1015ddeb83d1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1773&q=80")
file_thirty_nine = URI.open("https://images.unsplash.com/photo-1628779238951-be2c9f2a59f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80")
file_forty = URI.open("https://images.unsplash.com/flagged/photo-1572392640988-ba48d1a74457?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=928&q=80")
file_forty_one = URI.open("https://images.unsplash.com/photo-1540221652346-e5dd6b50f3e7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1769&q=80")
file_forty_two = URI.open("https://images.unsplash.com/photo-1601132359864-c974e79890ac?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1771&q=80")
file_forty_five = URI.open(image_url)
file_forty_six = URI.open(image_url)
file_forty_seven = URI.open(image_url)
file_forty_eight = URI.open(image_url)
file_forty_nine = URI.open(image_url)
file_fifty = URI.open(image_url)
file_fifty_one = URI.open(image_url)
file_fifty_two = URI.open(image_url)
file_fifty_three = URI.open(image_url)
file_fifty_four = URI.open(image_url)
file_fifty_five = URI.open(image_url)
file_fifty_six = URI.open(image_url)

nature = Theme.new(title: "Nature", description: "Immerse yourself in the wonders of nature", user: user2)
nature.photo.attach(io: file_twenty, filename: "theme.png", content_type: "image/png")
nature.save!

food = Theme.new(title: "Food", description: "A culinary journey through delicious dishes", user: user2)
food.photo.attach(io: file_thirty_seven, filename: "theme.png", content_type: "image/png")
food.save!

music = Theme.new(title: "Music", description: "Melodies that touch the soul", user: user2)
music.photo.attach(io: file_thirty_eight, filename: "theme.png", content_type: "image/png")
music.save!

sports = Theme.new(title: "Sports", description: "Unleash your competitive spirit with exciting sports", user: user2)
sports.photo.attach(io: file_thirty_nine, filename: "theme.png", content_type: "image/png")
sports.save!

art = Theme.new(title: "Art", description: "Discover the beauty of artistic creations", user: user2)
art.photo.attach(io: file_forty, filename: "theme.png", content_type: "image/png")
art.save!

fashion = Theme.new(title: "Fashion", description: "The latest trends and styles in the world of fashion", user: user2)
fashion.photo.attach(io: file_forty_one, filename: "theme.png", content_type: "image/png")
fashion.save!

technology = Theme.new(title: "Technology", description: "Exploring the latest advancements in technology", user: user2)
technology.photo.attach(io: file_forty_two, filename: "theme.png", content_type: "image/png")
technology.save!
