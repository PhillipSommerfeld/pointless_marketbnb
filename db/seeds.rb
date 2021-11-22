# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

User.destroy_all
Offer.destroy_all

10.times do
  users = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    address: Faker::Address.street_address
  )
  users.save

  users.each do |user|
    offers = Offer.create(
      item_name: Faker::Movie.title,
      price: rand(5..20),
      description: Faker::Lorem.paragraph,
      image_url: "https://picsum.photos/#{rand(100..300)}",
      quantity: rand(1..5),
      user_id: user.id
    )
    offers.save
  end
end

#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
