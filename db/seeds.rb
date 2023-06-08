# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
# Component.destroy_all
# Collaboration.destroy_all
Item.destroy_all
Topic.destroy_all
Theme.destroy_all
User.destroy_all

puts "Creating users..."

user1 = User.create(email: "pierre@gmail.com", password: "123456")
user2 = User.create(email: "marta@gmail.com", password: "123456")
user3 = User.create(email: "salim@gmail.com", password: "123456")
# user1.photo.attach(io: file_profile_one, filename: "avatar.pic", content_type: "image/png")

puts 'Creating themes...'
travel = Theme.new(title: "Travel", description: "Best places to travel to !", user: user2)
travel.save!

fooding = Theme.new(title: "Fooding", description: "Best places whereeat !", user: user2)
fooding.save!

adventure = Theme.new(title: "Adventure Escapes", description: "Experience thrilling adventures in breathtaking locations.", user: user2)
adventure.save!

artistic = Theme.new(title: "Artistic Exploration", description: "Immerse yourself in the vibrant world of art and creativity.", user: user2)
artistic.save!

wellness = Theme.new(title: "Wellness Retreats", description: "Rejuvenate your mind, body, and soul with soothing wellness retreats.", user: user2)
wellness.save!

historical = Theme.new(title: "Historical Wonders", description: "Discover the fascinating history and architectural wonders of different eras.", user: user2)
historical.save!

puts 'Creating topics for travel...'
cuba = Topic.new(title: "Cuba", description: "Cuba is almost 500 years old and a riot of color.", theme: travel)
cuba.save!
bali = Topic.new(title: "Bali", description: "Indonesian most  beaches, volcanoes, Komodo dragons and jungles sheltering elephants and tigers", theme: travel)
bali.save!
maldives = Topic.new(title: "The Maldives", description: "This tropical nation in the Indian Ocean is made up of more than 1,000 coral islands. ", theme: travel)
maldives.save!
tokyo = Topic.new(title: "Tokyo", description: "Visiting Tokyo is like visiting the future—flashing neon lights, incredible technology—yet there’s still a rich sense of culture and history.", theme: travel)
tokyo.save!

puts 'Creating topics for fooding...'
ramen = Topic.new(title: "Ramen", description: "If not tried, you must have heard of Ramen at least once in your life.", theme: fooding)
ramen.save!
pho = Topic.new(title: " Pho", description: "A simple yet an incredible dish, Pho (pronounced as 'fuh') is a Vietnamese dish made of rice noodles and meat", theme: fooding)
pho.save!
paella = Topic.new(title: "Paella", description: "Paella has got its roots in Valencia, Spain. It is an ancient dish recreated with a modern touch in the present times. ", theme: fooding)
paella.save!
apfelstrudel = Topic.new(title: "Apfelstrudel", description: "More commonly known as Apple Strudel, Apfelstrudel is a popular pastry in Austria and other parts of Europe.", theme: fooding)
apfelstrudel.save!

puts 'Creating topics for historical...'
ancientrome = Topic.new(title: "Ancient Rome", description: "Explore the fascinating history and ruins of Ancient Rome.", theme: historical)
ancientrome.save!
machupicchu = Topic.new(title: "Machu Picchu", description: "Discover the ancient Inca city nestled in the Andes Mountains.", theme: historical)
machupicchu.save!
greet = Topic.new(title: "Great Wall of China", description: "Discover the majestic Great Wall of China and its historical significance.", theme: historical)
greet.save!
collosseum = Topic.new(title: "The Colosseum", description: "Explore the iconic Roman amphitheater and delve into its ancient history.", theme: historical)
collosseum.save!

puts 'Creating topics for wellness...'
yoga = Topic.new(title: "Yoga Retreat", description: "Immerse yourself in a peaceful yoga retreat surrounded by nature.", theme: wellness)
yoga.save!
meditation = Topic.new(title: "Meditation Retreat", description: "Find inner calm and serenity in a tranquil meditation retreat.", theme: wellness)
meditation.save!
zen = Topic.new(title: "Zen Retreat in Kyoto", description: "Immerse yourself in a peaceful Zen retreat in the serene gardens of Kyoto.", theme: wellness)
zen.save!
ayurveda = Topic.new(title: "Ayurvedic Retreat in Kerala", description: "Experience traditional Ayurvedic healing in a rejuvenating retreat in Kerala.", theme: wellness)
ayurveda.save!

puts 'Create topics for Artistic Exploration'
parisiens = Topic.new(title: "Parisian Art Scene", description: "Experience the vibrant art scene and museums of Paris.", theme: artistic)
parisiens.save!
louvre = Topic.new(title: "The Louvre Museum", description: "Indulge in artistic exploration at the world-renowned Louvre Museum in Paris.", theme: artistic)
louvre.save!
streetArt = Topic.new(title: "Street Art in Berlin", description: "Discover the vibrant street art scene in Berlin and its unique expressions.", theme: artistic)
streetArt.save!
streetArtTour = Topic.new(title: "Street Art Tour", description: "Discover hidden street art gems in various cities around the world.", theme: artistic)
streetArtTour.save!


puts 'Creating items for Cuba'
havana = Item.new(title: "Havana Oulala", description: "is a super cozy place at the bottom of Calle Muralla, just a stone through from the Plaza Vieja.", topic: cuba)
havana.save!
eldandy = Item.new(title: "El Dandy", description: "favorite places has opened its doors to seated guests again!", topic: cuba)
eldandy.save!
havananights = Item.new(title: "Havana Nights", description: "Experience the vibrant nightlife of Havana with live music and salsa dancing.", topic: cuba)
havananights.save!
oldhavana = Item.new(title: "Old Havana Walking Tour", description: "Explore the historic streets of Old Havana and learn about its rich cultural heritage.", topic: cuba)
oldhavana.save!
varadero = Item.new(title: "Varadero Beach Escape", description: "Relax on the pristine white sands of Varadero and enjoy crystal clear waters.", topic: cuba)
varadero.save!
ubud = Item.new(title: "Ubud Rice Terraces", description: "Visit the stunning rice terraces in Ubud and immerse yourself in Balinese culture.", topic: bali)
ubud.save!
tanah = Item.new(title: "Tanah Lot Temple", description: "Explore the beautiful Tanah Lot Temple and witness a breathtaking sunset.", topic: bali)
tanah.save!
overwater = Item.new(title: "Overwater Bungalow Experience", description: "Indulge in luxury by staying in an overwater bungalow and enjoy turquoise waters.", topic: maldives)
overwater.save!
snorkling = Item.new(title: "Snorkeling in Coral Reefs", description: "Discover the vibrant underwater world by snorkeling in the Maldives' coral reefs.", topic: maldives)
snorkling.save!
senso = Item.new(title: "Sensō-ji Temple", description: "Visit the historic Sensō-ji Temple in Asakusa and explore its traditional markets.", topic: tokyo)
senso.save!
shibuya = Item.new(title: "Shibuya Crossing", description: "Experience the bustling Shibuya Crossing, one of the busiest intersections in the world.", topic: tokyo)
shibuya.save!

puts 'Finished!'
