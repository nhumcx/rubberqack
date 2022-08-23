# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Duck.destroy_all

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

20.times do
  duck = Duck.new(
    name: Faker::FunnyName.name,
    category: %w[Coding JavaScript Ruby HTML CSS FrontEnd BackEnd Cooking Relaxed Buddy Yoga].sample,
    description: "Always fun to talk to your duckling.",
    user_id: User.all.sample.id
  )
  duck.save!
end
