# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if User.count == 0
  user = CreateAdminService.new.call
  puts 'CREATED ADMIN USER: ' << user.email
end

require 'faker'

10.times do |i|
  a = Person.new(name: Faker::Name.name, weight: (50 + rand(20)), description: Faker::Lorem.paragraph, age: 17 + rand(10), phone: Faker::PhoneNumber.phone_number, email: Faker::Internet.email)
  a.save
  puts "Created model: #{a.name}"
end