# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.create([
  {
    first_name: 'Mickey',
    last_name: 'Mouse',
    email: 'mickey@mouse.com',
    cadence: 1
  },
  {
    first_name: 'Donald',
    last_name: 'Duck',
    email: 'donald@duck.com',
    cadence: 2
  },
  {
    first_name: 'Minnie',
    last_name: 'Mouse',
    email: 'minnie@mouse.com',
    cadence: 3
  },
  {
    first_name: 'Goofy',
    last_name: 'Geef',
    email: 'goofy@geef.com',
    cadence: 4
  }
])

12.times do |i|
  Delivery.create(date: Date.today - 4.weeks + i.weeks)
end

Account.all.each do |account|
  Delivery.all.each do |delivery|
    account.orders << Order.create(total: 100.00, delivery: delivery)
  end
end

