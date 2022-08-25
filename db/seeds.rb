# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

User.delete_all
Duck.delete_all

User.create!(
  email: "nhumo@test.com",
  password: "123456789"
)

User.create!(
  email: "max@test.com",
  password: "123456789"
)

User.create!(
  email: "denis@test.com",
  password: "123456789"
)

User.create!(
  email: "ej@test.com",
  password: "123456789"
)

# 20.times do
#   duck = Duck.new(
#     name: Faker::FunnyName.name,
#     category: %w[Coding JavaScript Ruby HTML CSS FrontEnd BackEnd Cooking Relaxed Buddy Yoga].sample,
#     description: "Always fun to talk to your duckling.",
#     user_id: User.all.sample.id
#   )
#   duck.save!
# end

domduck_url = URI.open(
  "https://res.cloudinary.com/dbgvo56a1/image/upload/v1661337388/SM-Rubber-Duck-front-Amsterdam-Duck-Store_gm1cpu.jpg"
)
domduck = Duck.new(
  name: "Domduck",
  category: "Dominant",
  description: "She is fiesty and she will punish you if you write a wrong code. So you better behave!",
  user: User.first
)
domduck.photo.attach(
  io: domduck_url,
  filename: "domduck.jpg",
  content_type: "image/jpg"
)
domduck.save!

fitduck_url = URI.open(
  "https://res.cloudinary.com/dbgvo56a1/image/upload/v1661268781/tym0xfrdgppiklpowlnj.jpg"
)
fitduck = Duck.new(
  name: "Fitduck",
  category: "Fitness",
  description: "'Brooo, let's hit the gym!'",
  user_id: User.all.sample.id
)
fitduck.photo.attach(
  io: fitduck_url,
  filename: "fitduck.jpg",
  content_type: "image/jpg"
)
fitduck.save!

truck_url = URI.open(
  "https://res.cloudinary.com/dbgvo56a1/image/upload/v1661337811/trump_kkt484.jpg"
)
truck = Duck.new(
  name: "Truck",
  category: "Best American",
  description: "'I know words. I have the best words.'",
  user: User.first
)
truck.photo.attach(
  io: truck_url,
  filename: "truck.jpg",
  content_type: "image/jpg"
)
truck.save!

coviduck_url = URI.open(
  "https://res.cloudinary.com/dbgvo56a1/image/upload/v1661337823/corona_vqzfdk.jpg"
)
coviduck = Duck.new(
  name: "Coviduck",
  category: "Roro",
  description: "This duck will make you stay at home all day, all night.",
  user: User.first
)
coviduck.photo.attach(
  io: coviduck_url,
  filename: "coviduck.jpg",
  content_type: "image/jpg"
)
coviduck.save!

mrtuck_url = URI.open(
  "https://res.cloudinary.com/dbgvo56a1/image/upload/v1661337819/mr_t_q6bljy.jpg"
)
mrtuck = Duck.new(
  name: "Mr. Tuck",
  category: "A-Team",
  description: "He got no time for the Jibba Jabba.",
  user: User.first
)
mrtuck.photo.attach(
  io: mrtuck_url,
  filename: "mrtuck.jpg",
  content_type: "image/jpg"
)
mrtuck.save!

rastaduck_url = URI.open(
  "https://res.cloudinary.com/dbgvo56a1/image/upload/v1661337828/rasta_onyk6f.jpg"
)
rastaduck = Duck.new(
  name: "Rastaduck",
  category: "Chill",
  description: "Wakey bakey. The higher the high, the closer to heaven.",
  user_id: User.all.sample.id
)
rastaduck.photo.attach(
  io: rastaduck_url,
  filename: "rastaduck.jpg",
  content_type: "image/jpg"
)
rastaduck.save!

paperino_url = URI.open(
  "https://res.cloudinary.com/dbgvo56a1/image/upload/v1661337815/pizzzaaa_kbpqpx.jpg"
)
paperino = Duck.new(
  name: "Paperino",
  category: "Italian",
  description: "Sono giallo, morbido e bellissimo!",
  user_id: User.all.sample.id
)
paperino.photo.attach(
  io: paperino_url,
  filename: "paperino.jpg",
  content_type: "image/jpg"
)
paperino.save!

# Duck.create(name: "Domduck", category: "Dominant", description: "She is fiesty and she will punish you if you write a wrong code. So you better behave!", photo: "https://res.cloudinary.com/dbgvo56a1/image/upload/v1661337388/SM-Rubber-Duck-front-Amsterdam-Duck-Store_gm1cpu.jpg", user_id: 1)

# Duck.create(name: "Fitduck", category: "Fitness", description: "Brooo, let's hit the gym!", photo: "https://res.cloudinary.com/dbgvo56a1/image/upload/v1661268781/tym0xfrdgppiklpowlnj.jpg", user_id: 2)

# Duck.create(name: "Truck", category: "Best American", description: "'I know words. I have the best words.'", photo: "https://res.cloudinary.com/dbgvo56a1/image/upload/v1661337811/trump_kkt484.jpg", user_id: 3)

# Duck.create(name: "Coviduck", category: "Roro", description: "This duck will make you stay at home all day, all night." , photo: "https://res.cloudinary.com/dbgvo56a1/image/upload/v1661337823/corona_vqzfdk.jpg", user_id: 4)

# Duck.create(name: "Mr. Tuck", category: "A-Team", description: "He got no time for the Jibba Jabba.", photo: "https://res.cloudinary.com/dbgvo56a1/image/upload/v1661337819/mr_t_q6bljy.jpg", user_id: 5)

# Duck.create(name: "Rastaduck", category: "Chill", description: "Wakey bakey. The higher the high, the closer to heaven.", photo: "https://res.cloudinary.com/dbgvo56a1/image/upload/v1661337828/rasta_onyk6f.jpg", user_id: 6)

# Duck.create(name: "Paperino", category: "Italian", description: "Sono giallo, morbido e bellissimo!", photo: "https://res.cloudinary.com/dbgvo56a1/image/upload/v1661337815/pizzzaaa_kbpqpx.jpg", user_id: 7)
