# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database!"

Review.destroy_all
Booking.destroy_all
Animal.destroy_all
User.destroy_all

%w(lux@mail.com sole@mail.com faby@mail.com sam@mail.com sebas@mail.com).each do |email|
  User.create!(
    email: email,
    password: 123456
  )
end

puts "Starting seeding process!"
User.first(2).each do |user|
  10.times do
   a = Animal.create!(
      animal_type: ["Dog", "Rabbit", "Cow", "Chicken", "Horse", "Pig", "Goat", "Cat", "Duck", "Donkey", "Ferret", "Monkeys"].sample,
      name: Faker::Games::Pokemon.name,
      description: Faker::TvShows::NewGirl.quote,
      price: rand(10..1000),
      location: Faker::Address.state,
      user: user
    )
   a.remote_photo_url = 'https://ichef.bbci.co.uk/news/660/cpsprodpb/B875/production/_102512274_gettyimages-518360318.jpg'
   a.save

    puts "- Animal #{a.name} was created!"
   10.times do
     booker = User.last(3).sample
     b = Booking.new(
        date: Date.today + rand(-20..0).days
        )
     b.user = booker
     b.animal = a
     b.save!
      puts " - Booked on #{b.date}!"
     rand(4..6).times do
      r = Review.new(
        content: "This is amazing",
        rating: rand(0..5)
        )
      r.booking = b
      r.save!
      puts " - Review with #{r.rating}!"
     end
    end
  end
end

puts "Finished seeding process!"
