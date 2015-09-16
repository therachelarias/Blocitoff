require 'faker'

# Users
10.times do
  User.create!(
    name:  Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )
end

users = User.all

# Items
50.times do
  Item.create!(
    name: Faker::Lorem.words
    )
end

items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"