# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
SPACESHIP_MODELS = ["SPACEX", "BOEING", "ORBITAL SCIENCES", "SIERRA NEVADA CORPORATION",
"VIRGIN GALACTIC", "XCOR AEROSPACE", "MADE IN SPACE", "AD ASTRA ROCKET COMPANY", "PLANETARY RESOURCES", "AIRBUS DEFENCE & SPACE"]
CURRENCY_TYPE = ["GBP", "USD", "EURO"]
10.times do
  Spaceship.create(
    model: SPACESHIP_MODELS.sample,
    fuel: Faker::Vehicle.fuel_type,
    capacity: rand(1..5),
    currency: CURRENCY_TYPE.sample,
    location: Faker::Address.postcode,
    captain: Faker::Name.name,
    date_of_production: Faker::Vehicle.year,
  )
end