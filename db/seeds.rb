# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

SPACESHIP_MODELS = ["SPACEX", "BOEING", "ORBITAL SCIENCES", "SIERRA NEVADA CORPORATION",
"VIRGIN GALACTIC", "XCOR AEROSPACE", "MADE IN SPACE", "AD ASTRA ROCKET COMPANY", "PLANETARY RESOURCES", "AIRBUS DEFENCE & SPACE"]
CURRENCY_TYPE = ["£", "$", "€"]
puts "destroying current records"
User.destroy_all
Spaceship.destroy_all
# puts "creating user"
# user = User.create(email:"stachugalon@gmail.com", password: "123456")
# puts "user created"

# puts "creating spaceships"
# 10.times do
#   Spaceship.create!(user: user,
#     model: SPACESHIP_MODELS.sample,
#     fuel_type: Faker::Vehicle.fuel_type,
#     capacity: rand(1..5),
#     cost: rand(100000..1000000),
#     currency: CURRENCY_TYPE.sample,
#     location: Faker::Address.country_by_code,
#     captain_name: Faker::Name.name,
#     date_of_production: Faker::Vehicle.year
#   )
#   puts "Spaceship created"
# end
# puts "Spaceships created"