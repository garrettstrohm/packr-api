puts "Resetting Seeds"
User.destroy_all
Trip.destroy_all
Adventure.destroy_all
TripItem.destroy_all

puts "🌱 Seeding spices..."

# User Seeds
puts "Seeding Users"
10.times{User.create(username: "#{Faker::NatoPhoneticAlphabet.code_word}", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, phone: Faker::Number.number(digits: 10))}

puts "Seeding Trips"
10.times{Trip.create(title: Faker::Fantasy::Tolkien.location, date: Faker::Date.between_except(from: 2.days.from_now, to: 2.year.from_now, excepted: Date.today), description: Faker::Fantasy::Tolkien.poem, user_id: User.all.sample.id)}

puts "Seeding Adventures"
20.times{Adventure.create(trip_id: Trip.all.sample.id, user_id: User.all.sample.id)}

puts "Seeding Trip Items"
30.times{TripItem.create(name: Faker::Appliance.equipment, description: Faker::Appliance.brand, quantity: rand(1...20), trip_id: Trip.all.sample.id)}

puts "✅ Done seeding!"
