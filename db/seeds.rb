# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Booking.destroy_all
User.destroy_all
Menu.destroy_all

users = []
menus = []
category = %w(Italian Chinese Japanese Belgian French Indian Lebanese Persian Italian Etiopian Vietnameese English Spanish Carribean Greek)}

10.times do
  users << User.new({
    first_name: Faker::Name.first_name ,
    last_name: Faker::Name.last_name ,
    postal_address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph ,
    admin: false,
    email: Faker::Internet.free_email ,
    })
  User.save
end

10.times do
  i = 0
  menus << Menu.new({
    user_id: users[i]
    name: Faker::Lorem.sentence,
    photo: Faker::Placeholdit.image ,
    price: rand(5..20),
    preparation_time: rand(20..60),
    min_guests: (1..4),
    max_guests: (5..10),
    starter: Faker::Lorem.paragraph,
    main: Faker::Lorem.paragraph,
    dessert: Faker::Lorem.paragraph,
    category: category[i],
    })
  Menu.save
  i += 1
end

#  Future bookings

10.times do
  i = 0
  Booking.new({
    user_id: users[i],
    menu_id: menus[i],
    location: Faker::Address.street_address,
    time: Faker::Time.forward(14, :evening),
    guests: rand(1..10),
    rating:
    })
end

#  Previous bookings

10.times do
  i = 0
  Booking.new({
    user_id: users[i],
    menu_id: menus[i],
    location: Faker::Address.street_address,
    time: Faker::Time.forward(14, :evening),
    guests: rand(1..10),
    rating: rand(0..5)
    })
end
