# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

prices=Price.create(
  [ {name:'3', awd_price: 5000, sd_price: 7800, ap_price: 4200, battery_70_price: 7500, battery_80_price: 12000,
    wheel_18_price: 500, wheel_19_price: 750}
  ]
  )
