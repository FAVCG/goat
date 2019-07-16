# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
%w(lux@mail.com sole@mail.com faby@mail.com sam@mail.com sebas@mail.com).each do |email|
  User.create!(
    email: email,
    password: 123456
  )
end

User.first(2).each do |user|
  3.times do
    Animal.create!(
      animal_type: Faker::Creature::Animal.name,
      name: Faker::Games::Pokemon.name,
      description: Faker::TvShows::NewGirl.quote,
      price: rand(10..1000000),
      user: user
    )
  end
end
