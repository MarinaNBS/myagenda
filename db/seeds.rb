require "uri"
require "faker"

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
Event.destroy_all
  User.create!(username: "Marina", email:"marina@exemple.com", password: "123456")
  10.times do
    User.create!(username: Faker::Name.first_name, email:"#{Faker::Name.first_name}@exemple.com", password: "123456")
  end
  puts "Created users 🎉"

  10.times do
    Event.create!(
      title: Faker::Book.title,
      notes: "blablabla",
      start_date: rand(1..30).days.from_now.to_date,
      end_date: rand(31..60).days.from_now.to_date,
      start_time:  Time.now + rand(0..48).hours,
      end_time: Time.now + rand(50..100).hours,
      user_id: User.pluck(:id).sample
    )
  end
  puts "Created events 🎉"
