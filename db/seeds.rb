# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "starting"
names = ["Ace",
 "Apollo",
 "Bailey",
 "Bandit",
 "Baxter",
 "Beau",
 "Benji",
 "Benny",
 "Bentley",
 "Blue",
 "Bo",
 "Boomer",
 "Brady",
 "Brody",
 "Bruno",
 "Brutus",
 "Bubba",
 "Buddy",
 "Buster",
 "Champ",
 "Chance",
 "Charlie",
 "Chase",
 "Chester",
 "Chico",
 "Coco",
 "Cody",
 "Cooper",
 "Copper",
 "Dexter",
 "Diesel",
 "Duke",
 "Elvis",
 "Finn",
 "Frankie",
 "George",
 "Gizmo",
 "Gunner",
 "Gus",
 "Hank",
 "Harley",
 "Henry",
 "Hunter",
 "Jack",
 "Jackson",
 "Jake",
 "Jasper",
 "Jax",
 "Joey",
 "Kobe",
 "Leo",
 "Loki",
 "Louie",
 "Lucky",
 "Luke",
 "Mac",
 "Marley",
 "Max",
 "Mickey",
 "Milo",
 "Moose",
 "Murphy",
 "Oliver",
 "Ollie",
 "Oreo",
 "Oscar",
 "Otis",
 "Peanut",
 "Prince",
 "Rex",
 "Riley",
 "Rocco",
 "Rocky",
 "Romeo",
 "Roscoe",
 "Rudy",
 "Rufus",
 "Rusty",
 "Sammy",
 "Samson",
 "Scooter",
 "Scout",
 "Simba",
 "Sparky",
 "Spike",
 "Tank",
 "Teddy",
 "Thor",
 "Toby",
 "Tucker",
 "Tyson",
 "Vader",
 "Winston",
 "Yoda",
 "Zeus",
 "Ziggy"]




 Review.destroy_all
 Booking.destroy_all
 Animal.destroy_all
 User.destroy_all


  User.create!(
    email: 'lux@mail.com',
    password: 123456,
    avatar: 'https://avatars1.githubusercontent.com/u/46462316?v=4'
    )
  puts "created" + User.last

  User.create!(
    email: 'alberta@mail.com',
    password: 123456,
    avatar: 'https://avatars0.githubusercontent.com/u/50481949?v=4'
    )
  puts "created" + User.last

  User.create!(
    email: 'fer@mail.com',
    password: 123456,
    avatar: 'https://avatars0.githubusercontent.com/u/47560671?v=4'
    )
  puts "created" + User.last

  User.create!(
    email: 'orlando@mail.com',
    password: 123456,
    avatar: 'https://avatars2.githubusercontent.com/u/23037260?v=4'
    )
  puts "created" + User.last

  User.create!(
    email: 'yuyu@mail.com',
    password: 123456,
    avatar: 'https://avatars1.githubusercontent.com/u/49326447?v=4'
    )
  puts "created" + User.last

  User.create!(
    email: 'sam@mail.com',
    password: 123456,
    avatar: 'https://avatars3.githubusercontent.com/u/27783841?v=4'
    )
  puts "created" + User.last

  User.create!(
    email: 'leo@mail.com',
    password: 123456,
    avatar: 'https://avatars1.githubusercontent.com/u/39697541?v=4'
    )
  puts "created" + User.last

  User.create!(
    email: 'faby@mail.com',
    password: 123456,
    avatar: 'https://avatars2.githubusercontent.com/u/50439580?v=4'
    )
  puts "created" + User.last
  User.create!(
    email: 'sole@mail.com',
    password: 123456,
    avatar: 'https://avatars0.githubusercontent.com/u/48864600?v=4'
    )
  puts "created" + User.last
  User.create!(
    email: 'pin@mail.com',
    password: 123456,
    avatar: 'https://avatars1.githubusercontent.com/u/37698593?v=4'
    )
  puts "created" + User.last
  User.create!(
    email: 'lisa@mail.com',
    password: 123456,
    avatar: 'https://avatars1.githubusercontent.com/u/50211536?v=4'
    )
  puts "created" + User.last
  User.create!(
    email: 'sebas@mail.com',
    password: 123456,
    avatar: 'https://avatars0.githubusercontent.com/u/18401014?s=460&v=4'
    )
  puts "created" + User.last


b = ["Dog", "Rabbit", "Cow", "Chicken", "Horse", "Pig", "Goat", "Cat", "Duck", "Donkey", "Ferret", "Monkeys"]


1.times do
 a = Animal.create!(
  animal_type: 'Dog',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://www.thelabradorsite.com/wp-content/uploads/2017/11/cute.jpg'
 a.save
end

1.times do
 a = Animal.create!(
  animal_type: 'Dog',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://www.littlethings.com/app/uploads/2017/05/cute-dog-names-1200.jpg'
 a.save
end




1.times do
 a = Animal.create!(
  animal_type: 'Dog',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'http://fallinpets.com/wp-content/uploads/2017/11/dogs-cute-dog-800x445.jpg'
 a.save
end
1.times do
 a = Animal.create!(
  animal_type: 'Dog',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://files.brightside.me/files/news/part_66/660860/8264060-A-tiny-puppy-Striking-a-tiny-puppy-pose-1544190301-728-16941a41db-1544515890.jpg'
 a.save
end




1.times do
 a = Animal.create!(
  animal_type: 'Rabbit',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://i.ytimg.com/vi/bfN60awmfYk/maxresdefault.jpg'
 a.save
end
1.times do
 a = Animal.create!(
  animal_type: 'Rabbit',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://media.mnn.com/assets/images/2017/04/lop-earred-rabbit.jpg.653x0_q80_crop-smart.jpg'
 a.save
end


1.times do
 a = Animal.create!(
  animal_type: 'Rabbit',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://i.ytimg.com/vi/Fv5MZFWn7lE/maxresdefault.jpg'
 a.save
end




1.times do
 a = Animal.create!(
  animal_type: 'Rabbit',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJPQAm7JXgGUou-JZm4l-aEegMJAIykRb8THNr_m8lYSbMiG9TAA'
 a.save
end




1.times do
 a = Animal.create!(
  animal_type: 'Pig',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://blog.humanesociety.org/wp-content/uploads/2018/11/PIG-ISTOCK-522732412_451435-1220x815.jpg'
 a.save
end




1.times do
 a = Animal.create!(
  animal_type: 'Pig',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://i.imgur.com/Yp47kNU.jpg'
 a.save
end




1.times do
 a = Animal.create!(
  animal_type: 'Pig',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  user: User.all.sample
  )
 a.remote_photo_url = 'http://i.imgur.com/4Zt1HHQ.jpg'
 a.save
end




1.times do
 a = Animal.create!(
  animal_type: 'Cow',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://parade.com/wp-content/uploads/2018/01/cute-cow-FTR.jpg'
 a.save
end

1.times do
 a = Animal.create!(
  animal_type: 'Cow',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'http://imgur.com/YSrCU.jpg'
 a.save
end




1.times do
 a = Animal.create!(
  animal_type: 'Chicken',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://i.pinimg.com/originals/ca/81/0d/ca810d5550d09379a100e4e645826da1.jpg'
 a.save
end

1.times do
 a = Animal.create!(
  animal_type: 'Chicken',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://www.mypetsname.com/wp-content/uploads/2019/04/Cute-Chicken-Names.jpg'
 a.save
end



1.times do
 a = Animal.create!(
  animal_type: 'Chicken',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'http://wallpapers.sanctify.in/file/123/600x338/16:9/chick-hd-wallpaper_1789129887.jpg'
 a.save
end




1.times do
 a = Animal.create!(
  animal_type: 'Horse',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://res.cloudinary.com/teepublic/image/private/s--9wA-BGhK--/t_Preview/b_rgb:ffffff,c_limit,f_jpg,h_630,q_90,w_630/v1510211727/production/designs/2038717_1.jpg'
 a.save
end



1.times do
 a = Animal.create!(
  animal_type: 'Horse',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://cache.desktopnexus.com/thumbseg/2041/2041370-bigthumbnail.jpg'
 a.save
end



1.times do
 a = Animal.create!(
  animal_type: 'Pig',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'http://cde.peru21.pe/ima/0/0/3/1/7/317995.jpg'
 a.save
end



1.times do
 a = Animal.create!(
  animal_type: 'Pig',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://www.comlib.org/wordpress/wp-content/uploads/2017/01/cute-pig.jpg'
 a.save
end



1.times do
 a = Animal.create!(
  animal_type: 'Ferret',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://i.ytimg.com/vi/f_2FQ3EgQbM/maxresdefault.jpg'
 a.save
end



1.times do
 a = Animal.create!(
  animal_type: 'Ferret',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://static.boredpanda.com/blog/wp-content/uploads/2015/05/cute-ferret-photography-3__700.jpg'
 a.save
end



1.times do
 a = Animal.create!(
  animal_type: 'Goat',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://o6txaleu22-flywheel.netdna-ssl.com/wp-content/uploads/2013/10/IMG_6739.jpg'
 a.save
end



1.times do
 a = Animal.create!(
  animal_type: 'Goat',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://66.media.tumblr.com/50e0286f4a140fd00cd9827e9e6d9229/tumblr_inline_mnttczMxPg1qz4rgp.jpg'
 a.save
end



1.times do
 a = Animal.create!(
  animal_type: 'Cat',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://i.ytimg.com/vi/NCZ0eg1zEvw/maxresdefault.jpg'
 a.save
end



1.times do
 a = Animal.create!(
  animal_type: 'Cat',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://worldcatcomedy.com/wp-content/uploads/2018/10/maxresdefault-47.jpg'
 a.save
end



1.times do
 a = Animal.create!(
  animal_type: 'Duck',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://i.ytimg.com/vi/CjLqyKDiXN4/maxresdefault.jpg'
 a.save
end



1.times do
 a = Animal.create!(
  animal_type: 'Duck',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'http://cdn.litlepups.net/2015/12/04/animals-on-pinterest-cute-bunny-bunnies-and-baby-ducks.jpg'
 a.save
end






1.times do
 a = Animal.create!(
  animal_type: 'Donkey',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://en.bcdn.biz/Images/2018/4/2/7c17e642-5db7-4022-8f45-0df32cf4e471.jpg'
 a.save
end






1.times do
 a = Animal.create!(
  animal_type: 'Donkey',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://i.ytimg.com/vi/0vhP11e0KzU/maxresdefault.jpg'
 a.save
end



1.times do
 a = Animal.create!(
  animal_type: 'Dinosaur',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://www.houstononthecheap.com/wp-content/uploads/2019/05/DINOSAURS.jpg'
 a.save
end



1.times do
 a = Animal.create!(
  animal_type: 'Dinosaur',
  name: names.sample,
  description: Faker::Lorem.sentence(rand(100..200)),
  price: rand(10..1000),
  location: Faker::Address.state,
  address: Faker::Address.street_address,
  user: User.all.sample
  )
 a.remote_photo_url = 'https://thumbs-prod.si-cdn.com/K7uHs79o0HQuNO3eblCFYSUg6K4=/1072x720/filters:no_upscale()/https://public-media.si-cdn.com/filer/20110520083105trex_dinosaur_tracking.jpg'
 a.save
end

15.times do
  b = Booking.new(
   date: Date.today + (-20..0).to_a.sample.days,
   user: User.all.sample,
   animal: Animal.all.sample
   )
  b.save! if b.animal.user != b.user
end

   # 1.times do
   #  r = Review.new(
   #    content: ["This is amazing", "Bad experience", "My best experience", "I love animals"].sample,
   #    rating: rand(0..5)
   #    )
   #  r.booking = b
   #  r.save!
   # end
puts "Finished seeding process!"
