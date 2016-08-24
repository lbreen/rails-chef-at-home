# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'devise'

# Booking.destroy_all
# User.destroy_all
# Menu.destroy_all
Booking.destroy_all
Menu.destroy_all
User.destroy_all

users = []
menus = []
category = %w(Italian Chinese Japanese Belgian French Indian Lebanese Persian Italian Etiopian Vietnameese English Spanish Carribean Greek)
picture = %w(Menu01.jpg Menu02.jpeg Menu-italian03.jpeg Menu-Japanese04.jpeg Menu-International05.jpeg Menu-Fish06.jpeg Menu-Burger07.jpeg Cook-India08.jpg Menu-Pasta09.jpg Menu-Pizza10.jpg Menu-English11.jpg Indian-photo12.jpg)

15.times do
  users << User.create!({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    postal_address: Faker::Address.street_address,
    description: "Enter description here",
    admin: false,
    email: Faker::Internet.free_email,
    password: Devise.friendly_token.first(8)
    })
end

i = 0

10.times do
  menus << Menu.create!({
    user_id: users[i].id,
    name: Faker::Lorem.sentence(2),
    photo: picture[i],
    price: rand(5..20),
    preparation_time: rand(20..60),
    min_guests: rand(1..4),
    max_guests: rand(5..10),
    starter: Faker::Lorem.paragraph,
    main: Faker::Lorem.paragraph,
    dessert: Faker::Lorem.paragraph,
    category: category[i],
    })
  i += 1
end

#  Future bookings

i = 0

5.times do
  Booking.create!({
    user_id: users[i].id,
    menu_id: menus[i].id,
    location: users[i].postal_address,
    time: Faker::Time.forward(14, :evening),
    guests: rand(0..10),
    })

  i += 1
end

#  Past bookings

i = 0

5.times do
  Booking.create!({
    user_id: users[i + 5].id,
    menu_id: menus[i + 5].id,
    location: users[i].postal_address,
    time: Faker::Time.backward(14, :evening),
    guests: rand(0..10),
    rating: rand(0..5)
    })

  i += 1
end
