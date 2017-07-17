# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users=User.create!(
  [{first_name:'a',last_name:'a',email:'a@a.ca',passport:'aaa111', dob: "1989-04-24",password_digest:'$2a$10$9Wq4gcgxxLLRfAf0gj6kd.y1Yd9zlBnfeTN6Jeyq7Uv9AQv5B5T6W'},
  {first_name: "b", last_name: "b", email: "b@b.ca", password_digest: "$2a$10$dClR4bU1nEBsW.qYcJUy4O4Ol9VqODvjJymZBrm4lpLvKWNG2LZJC", passport: "bbb222", dob: "1971-12-07"},
  {first_name: "c", last_name: "c", email: "c@c.ca", password_digest: "$2a$10$Fa7XWuZysywCLel1nO7GdOXTI43gpi4HlvJnQ9xhcnbQ6uLfjH/e6", passport: "ccc333", dob: "1941-01-25"}])



prices=Price.create(
  [ {name:'3', awd_price: 5000, sd_price: 7800, ap_price: 4200, battery_70_price: 7500, battery_80_price: 12000,
    wheel_18_price: 500, wheel_19_price: 750, base_price: 35000}
  ])

