User.destroy_all

u1 = User.create name: Faker::Name.name, email: 'test@gmail.com', password_digest: 'chicken'
u2 = User.create name: Faker::Name.name, email: 'user@gmail.com', password_digest: 'chicken'
u3 = User.create name: Faker::Name.name, email: 'sahana@gmail.com', password_digest: 'chicken'

u4 = User.create name: Faker::Name.name, email: 'abc@gmail.com', password_digest: 'chicken'

u5 = User.create name: Faker::Name.name, email: 'saanu@gmail.com', password_digest: 'chicken'

u6 = User.create name: Faker::Name.name, email: 'test2@gmail.com', password_digest: 'chicken'


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

u1.shows << s1 << s2
u2.movies << m1 << m2
