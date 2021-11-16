# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding"

10.times do
  pet = Pet.new(
    name: Faker::Creature::Dog.name,
    address: Faker::Address.street_address,
    species: Pet::PETS.sample,
    found_on: Date.today,
  )
  pet.save!
  puts "#{pet.name} saved to database"
end

puts "Done!"