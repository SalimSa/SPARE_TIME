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
Item.destroy_all
Topic.destroy_all
Theme.destroy_all
User.destroy_all

file_one = URI.open("https://images.unsplash.com/photo-1500835556837-99ac94a94552?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHJhdmVsfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60")
file_two= URI.open("https://images.unsplash.com/photo-1606787366850-de6330128bfc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60")
file_three = URI.open("https://images.unsplash.com/photo-1501761095094-94d36f57edbb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YWR2ZW50dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60")
file_four = URI.open("https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YXJ0fGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60")
file_five = URI.open("https://plus.unsplash.com/premium_photo-1669795612621-b07938a4269d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bWVkaXRhdGlvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60")
file_six = URI.open("https://images.unsplash.com/photo-1526505262320-81542978f63b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGxlZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60")
file_seven = URI.open("https://images.unsplash.com/photo-1472173148041-00294f0814a2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGhpc3Rvcnl8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60")
file_eight = URI.open("https://images.unsplash.com/photo-1513384312027-9fa69a360337?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fGxlZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60")
file_nine = URI.open("https://www.lego.com/cdn/cs/set/assets/blta7b7b825b6d4fc0a/75313_Prod.png?fit=bounds&format=webply&quality=80&width=320&height=320&dpr=2")
file_ten = URI.open("https://www.lego.com/cdn/cs/set/assets/bltf316536e3bacd03a/40478.jpg?format=webply&fit=bounds&quality=80&width=320&height=320&dpr=2")
file_eleven = URI.open("https://www.lego.com/cdn/cs/set/assets/blt2ca5e68542c05dd8/43202_.png?format=webply&fit=bounds&quality=80&width=320&height=320&dpr=2")
file_twelve = URI.open("https://www.lego.com/cdn/cs/set/assets/blt60c4eccd637be544/76421.png?format=webply&fit=bounds&quality=80&width=320&height=320&dpr=2")
file_thirteen = URI.open("https://www.lego.com/cdn/cs/set/assets/blt2c408dc4fb192074/71043.jpg?format=webply&fit=bounds&quality=80&width=320&height=320&dpr=2")
file_fourteen = URI.open("https://images.unsplash.com/photo-1538448174498-9956c159edb0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fGxlZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1400&q=60")
file_fifteen = URI.open("https://images.unsplash.com/photo-1563823263008-ec7877629ba0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fGxlZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1400&q=60")
file_sixteen = URI.open("https://images.unsplash.com/photo-1609741199743-341cf4ee3d02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1527&q=80")
file_seventeen = URI.open("https://images.unsplash.com/photo-1621453420564-04315be63900?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjR8fGxlZ28lMjBidWlsZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60")
file_eighteen = URI.open("https://images.unsplash.com/photo-1567329776387-a135c5ea2f75?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bGVnbyUyMGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60")
file_nineteen = URI.open("https://images.unsplash.com/photo-1609283040241-7a50dc4288bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bGVnbyUyMHNoaXB8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=700&q=60")
file_twenty = URI.open("https://images.unsplash.com/photo-1600784574965-a2f558622fd9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=654&q=80")
file_twenty_one = URI.open("https://images.unsplash.com/photo-1565438525268-adf2e49737e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bGVnbyUyMGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=700&q=60")
file_twenty_two = URI.open("https://images.unsplash.com/photo-1638437447450-ae0e57c04b90?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1331&q=80")
file_twenty_three = URI.open("https://images.unsplash.com/photo-1531061682486-1fa5a7390f74?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTR8fGxlZ28lMjBzaGlwfGVufDB8fDB8fHww&auto=format&fit=crop&w=700&q=60")
file_twenty_four = URI.open("https://images.unsplash.com/photo-1632080167294-6b12a5091e72?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bGVnbyUyMGJvYXR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=700&q=60")
file_twenty_five = URI.open("https://images.unsplash.com/photo-1538448174498-9956c159edb0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fGxlZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1400&q=60")
file_twenty_six= URI.open("https://images.unsplash.com/photo-1609741199743-341cf4ee3d02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1527&q=80")
file_twenty_seven = URI.open("https://images.unsplash.com/photo-1563823263008-ec7877629ba0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fGxlZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1400&q=60")
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

fooding = Theme.new(title: "Fooding", description: "Best places whereeat !", user: user2)
fooding.photo.attach(io: file_two, filename: "theme.png", content_type: "image/png")
fooding.save!

adventure = Theme.new(title: "Adventure Escapes", description: "Experience thrilling adventures in breathtaking locations.", user: user2)
adventure.photo.attach(io: file_three, filename: "theme.png", content_type: "image/png")
adventure.save!

artistic = Theme.new(title: "Artistic Exploration", description: "Immerse yourself in the vibrant world of art and creativity.", user: user2)
artistic.photo.attach(io: file_four, filename: "theme.png", content_type: "image/png")
artistic.save!

wellness = Theme.new(title: "Wellness Retreats", description: "Rejuvenate your mind, body, and soul with soothing wellness retreats.", user: user2)
wellness.photo.attach(io: file_five, filename: "theme.png", content_type: "image/png")
wellness.save!

historical = Theme.new(title: "Historical Wonders", description: "Discover the fascinating history and architectural wonders of different eras.", user: user2)
historical.photo.attach(io: file_six, filename: "theme.png", content_type: "image/png")
historical.save!

puts 'Creating topics for travel...'
cuba = Topic.new(title: "Cuba", description: "Cuba is almost 500 years old and a riot of color.", theme: travel)
cuba.photo.attach(io: file_seven, filename: "topic.png", content_type: "image/png")
cuba.save!
bali = Topic.new(title: "Bali", description: "Indonesian most  beaches, volcanoes, Komodo dragons and jungles sheltering elephants and tigers", theme: travel)
bali.photo.attach(io: file_eight, filename: "topic.png", content_type: "image/png")
bali.save!
maldives = Topic.new(title: "The Maldives", description: "This tropical nation in the Indian Ocean is made up of more than 1,000 coral islands. ", theme: travel)
maldives.photo.attach(io: file_nine, filename: "topic.png", content_type: "image/png")
maldives.save!
tokyo = Topic.new(title: "Tokyo", description: "Visiting Tokyo is like visiting the future—flashing neon lights, incredible technology—yet there’s still a rich sense of culture and history.", theme: travel)
tokyo.photo.attach(io: file_ten, filename: "topic.png", content_type: "image/png")
tokyo.save!

puts 'Creating topics for fooding...'
ramen = Topic.new(title: "Ramen", description: "If not tried, you must have heard of Ramen at least once in your life.", theme: fooding)
ramen.photo.attach(io: file_eleven, filename: "topic.png", content_type: "image/png")
ramen.save!
pho = Topic.new(title: " Pho", description: "A simple yet an incredible dish, Pho (pronounced as 'fuh') is a Vietnamese dish made of rice noodles and meat", theme: fooding)
pho.photo.attach(io: file_twelve, filename: "topic.png", content_type: "image/png")
pho.save!
paella = Topic.new(title: "Paella", description: "Paella has got its roots in Valencia, Spain. It is an ancient dish recreated with a modern touch in the present times. ", theme: fooding)
paella.photo.attach(io: file_thirteen, filename: "topic.png", content_type: "image/png")
paella.save!
apfelstrudel = Topic.new(title: "Apfelstrudel", description: "More commonly known as Apple Strudel, Apfelstrudel is a popular pastry in Austria and other parts of Europe.", theme: fooding)
apfelstrudel.photo.attach(io: file_fourteen, filename: "topic.png", content_type: "image/png")
apfelstrudel.save!

puts 'Creating topics for historical...'
ancientrome = Topic.new(title: "Ancient Rome", description: "Explore the fascinating history and ruins of Ancient Rome.", theme: historical)
ancientrome.photo.attach(io: file_fifteen, filename: "topic.png", content_type: "image/png")
ancientrome.save!
machupicchu = Topic.new(title: "Machu Picchu", description: "Discover the ancient Inca city nestled in the Andes Mountains.", theme: historical)
machupicchu.photo.attach(io: file_sixteen, filename: "topic.png", content_type: "image/png")
machupicchu.save!
greet = Topic.new(title: "Great Wall of China", description: "Discover the majestic Great Wall of China and its historical significance.", theme: historical)
greet.photo.attach(io: file_seventeen, filename: "topic.png", content_type: "image/png")
greet.save!
collosseum = Topic.new(title: "The Colosseum", description: "Explore the iconic Roman amphitheater and delve into its ancient history.", theme: historical)
collosseum.photo.attach(io: file_eighteen, filename: "topic.png", content_type: "image/png")
collosseum.save!

puts 'Creating topics for wellness...'
yoga = Topic.new(title: "Yoga Retreat", description: "Immerse yourself in a peaceful yoga retreat surrounded by nature.", theme: wellness)
yoga.photo.attach(io: file_nineteen, filename: "topic.png", content_type: "image/png")
yoga.save!
meditation = Topic.new(title: "Meditation Retreat", description: "Find inner calm and serenity in a tranquil meditation retreat.", theme: wellness)
meditation.photo.attach(io: file_twenty, filename: "topic.png", content_type: "image/png")
meditation.save!
zen = Topic.new(title: "Zen Retreat in Kyoto", description: "Immerse yourself in a peaceful Zen retreat in the serene gardens of Kyoto.", theme: wellness)
zen.photo.attach(io: file_twenty_one, filename: "topic.png", content_type: "image/png")
zen.save!
ayurveda = Topic.new(title: "Ayurvedic Retreat in Kerala", description: "Experience traditional Ayurvedic healing in a rejuvenating retreat in Kerala.", theme: wellness)
ayurveda.photo.attach(io: file_twenty_two, filename: "topic.png", content_type: "image/png")
ayurveda.save!

puts 'Create topics for Artistic Exploration'
parisiens = Topic.new(title: "Parisian Art Scene", description: "Experience the vibrant art scene and museums of Paris.", theme: artistic)
parisiens.photo.attach(io: file_twenty_three, filename: "topic.png", content_type: "image/png")
parisiens.save!
louvre = Topic.new(title: "The Louvre Museum", description: "Indulge in artistic exploration at the world-renowned Louvre Museum in Paris.", theme: artistic)
louvre.photo.attach(io: file_twenty_four, filename: "topic.png", content_type: "image/png")
louvre.save!
streetArt = Topic.new(title: "Street Art in Berlin", description: "Discover the vibrant street art scene in Berlin and its unique expressions.", theme: artistic)
streetArt.photo.attach(io: file_twenty_five, filename: "topic.png", content_type: "image/png")
streetArt.save!
streetArtTour = Topic.new(title: "Street Art Tour", description: "Discover hidden street art gems in various cities around the world.", theme: artistic)
streetArtTour.photo.attach(io: file_twenty_six, filename: "topic.png", content_type: "image/png")
streetArtTour.save!


puts 'Creating items for Cuba'
havana = Item.new(title: "Havana Oulala", description: "is a super cozy place at the bottom of Calle Muralla, just a stone through from the Plaza Vieja.", topic: cuba)
havana.photo.attach(io: file_twenty_seven, filename: "theme.png", content_type: "image/png")
havana.save!
eldandy = Item.new(title: "El Dandy", description: "favorite places has opened its doors to seated guests again!", topic: cuba)
eldandy.photo.attach(io: file_twenty_eight, filename: "theme.png", content_type: "image/png")
eldandy.save!
havananights = Item.new(title: "Havana Nights", description: "Experience the vibrant nightlife of Havana with live music and salsa dancing.", topic: cuba)
havananights.photo.attach(io: file_twenty_nine, filename: "theme.png", content_type: "image/png")
havananights.save!
oldhavana = Item.new(title: "Old Havana Walking Tour", description: "Explore the historic streets of Old Havana and learn about its rich cultural heritage.", topic: cuba)
oldhavana.photo.attach(io: file_thirty, filename: "theme.png", content_type: "image/png")
oldhavana.save!
varadero = Item.new(title: "Varadero Beach Escape", description: "Relax on the pristine white sands of Varadero and enjoy crystal clear waters.", topic: cuba)
varadero.photo.attach(io: file_thirty_one, filename: "theme.png", content_type: "image/png")
varadero.save!
ubud = Item.new(title: "Ubud Rice Terraces", description: "Visit the stunning rice terraces in Ubud and immerse yourself in Balinese culture.", topic: bali)
ubud.photo.attach(io: file_thirty_two, filename: "theme.png", content_type: "image/png")
ubud.save!
tanah = Item.new(title: "Tanah Lot Temple", description: "Explore the beautiful Tanah Lot Temple and witness a breathtaking sunset.", topic: bali)
tanah.photo.attach(io: file_thirty_three, filename: "theme.png", content_type: "image/png")
tanah.save!
overwater = Item.new(title: "Overwater Bungalow Experience", description: "Indulge in luxury by staying in an overwater bungalow and enjoy turquoise waters.", topic: maldives)
overwater.photo.attach(io: file_thirty_four, filename: "theme.png", content_type: "image/png")
overwater.save!
snorkling = Item.new(title: "Snorkeling in Coral Reefs", description: "Discover the vibrant underwater world by snorkeling in the Maldives' coral reefs.", topic: maldives)
snorkling.photo.attach(io: file_thirty_five, filename: "theme.png", content_type: "image/png")
snorkling.save!
senso = Item.new(title: "Sensō-ji Temple", description: "Visit the historic Sensō-ji Temple in Asakusa and explore its traditional markets.", topic: tokyo)
senso.photo.attach(io: file_thirty_six, filename: "theme.png", content_type: "image/png")
senso.save!
shibuya = Item.new(title: "Shibuya Crossing", description: "Experience the bustling Shibuya Crossing, one of the busiest intersections in the world.", topic: tokyo)
shibuya.photo.attach(io: file_thirty_seven, filename: "theme.png", content_type: "image/png")
shibuya.save!

puts 'Finished!'
