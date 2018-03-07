User.destroy_all

u1 = User.create name: Faker::Name.name, email: 'test@gmail.com', password: 'chicken'
u2 = User.create name: Faker::Name.name, email: 'user@gmail.com', password: 'chicken'
u3 = User.create name: Faker::Name.name, email: 'sahana@gmail.com', password: 'chicken'
u4 = User.create name: Faker::Name.name, email: 'user1@gmail.com', password: 'chicken'
u5 = User.create name: Faker::Name.name, email: 'user2@gmail.com', password: 'chicken'

u6 = User.create name: Faker::Name.name, email: 'abc@gmail.com', password: 'chicken'

u7 = User.create name: Faker::Name.name, email: 'saanu@gmail.com', password: 'chicken'

u8 = User.create name: Faker::Name.name, email: 'test2@gmail.com', password: 'chicken'


puts "There are #{User.all.length} users"

Show.destroy_all

s1 = Show.create name: "Breaking Bad"

s2 = Show.create name: "FRIENDS"

s3 = Show.create name: "Ashoka"

puts "There are #{Show.all.length} shows"

Movie .destroy_all

m1 = Movie.create name: "Jab We Met"

m2 = Movie.create name: "Jab Harry Met Sajel"

m3 = Movie.create name: "KKHH"

puts "There are #{Movie.all.length} movies"


Viewedmovie.destroy_all

v1 = Viewedmovie.create name: "Jab We Met"

v2 = Viewedmovie.create name: "Jab Harry Met Sajel"

v3 = Viewedmovie.create name: "KKHH"

puts "There are #{Viewedmovie.all.length} Viewed movies"

u1.shows << s1 << s2
u2.movies << m1 << m2
u1.viewedmovies << v1 << v2
