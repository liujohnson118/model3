# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users=User.create!(
  [{first_name:'Michael',last_name:'Scofield',email:'a@a.ca',passport:'aaa111', dob: "1989-04-24",password_digest:'$2a$10$9Wq4gcgxxLLRfAf0gj6kd.y1Yd9zlBnfeTN6Jeyq7Uv9AQv5B5T6W'},
  {first_name: "Alexander", last_name: "Mahon", email: "b@b.ca", password_digest: "$2a$10$dClR4bU1nEBsW.qYcJUy4O4Ol9VqODvjJymZBrm4lpLvKWNG2LZJC", passport: "bbb222", dob: "1971-12-07"},
  {first_name: "Lincoln", last_name: "Borrows", email: "c@c.ca", password_digest: "$2a$10$Fa7XWuZysywCLel1nO7GdOXTI43gpi4HlvJnQ9xhcnbQ6uLfjH/e6", passport: "ccc333", dob: "1941-01-25"},
  {first_name: "Fernando", last_name: "Sucre", email: "d@d.ca", password_digest: "$2a$10$Fa7XWuZysywCLel1nO7GdOXTI43gpi4HlvJnQ9xhcnbQ6uLfjH/e6", passport: "ddd333", dob: "1968-06-29"},
  {first_name: "Theodore", last_name: "Bagwell", email: "e@e.ca", password_digest: "$2a$10$Fa7XWuZysywCLel1nO7GdOXTI43gpi4HlvJnQ9xhcnbQ6uLfjH/e6", passport: "eee333", dob: "1940-11-15"},
  {first_name: "Sara", last_name: "TanCredi", email: "f@f.ca", password_digest: "$2a$10$Fa7XWuZysywCLel1nO7GdOXTI43gpi4HlvJnQ9xhcnbQ6uLfjH/e6", passport: "fff333", dob: "1971-12-15"}])



prices=Price.create(
  [ {name:'3', awd_price: 5000, sd_price: 7800, ap_price: 4200, battery_70_price: 7500, battery_80_price: 12000,
    wheel_18_price: 500, wheel_19_price: 750, base_price: 35000}
  ])

cars=Car.create(
  [{color: "red", ap: true, awd: false, sd: true, battery: 80, wheel: 17, user_id: 1, paid: false, price: 59000.0, reviewed: false,delivered:false,vin:'wait'},
    {color: "white", ap: false, awd: false, sd: false, battery: 70, wheel: 17, user_id: 1, paid: false, price: 42500.0, reviewed: false,delivered:false,vin:'wait'},
    {color: "grey", ap: false, awd: false, sd: false, battery: 60, wheel: 17, user_id: 3, paid: false, price: 35000.0, reviewed: false,delivered:false,vin:'wait'},
    {color: "red", ap: true, awd: false, sd: false, battery: 80, wheel: 17, user_id: 6, paid: false, price: 51200.0, reviewed: false,delivered:false,vin:'wait'},
    {color: "black", ap: true, awd: false, sd: true, battery: 80, wheel: 17, user_id: 5, paid: false, price: 59000.0, reviewed: false,delivered:false,vin:'wait'},
    {color: "white", ap: false, awd: false, sd: false, battery: 70, wheel: 17, user_id: 2, paid: false, price: 42500.0, reviewed: false,delivered:false,vin:'wait'},
    {color: "grey", ap: false, awd: true, sd: false, battery: 70, wheel: 17, user_id: 2, paid: false, price: 47500.0, reviewed: false,delivered:false,vin:'wait'},
    {color: "red", ap: true, awd: false, sd: false, battery: 60, wheel: 17, user_id: 2, paid: false, price: 39200.0, reviewed: false,delivered:false,vin:'wait'},
    {color: "black", ap: true, awd: false, sd: true, battery: 80, wheel: 17, user_id: 3, paid: false, price: 59000.0, reviewed: false,delivered:false,vin:'wait'},
    {color: "white", ap: false, awd: false, sd: false, battery: 70, wheel: 17, user_id: 3, paid: false, price: 42500.0, reviewed: false,delivered:false,vin:'wait'},
    {color: "white", ap: false, awd: true, sd: false, battery: 70, wheel: 17, user_id: 3, paid: false, price: 47500.0, reviewed: false,delivered:false,vin:'wait'},
    {color: "black", ap: true, awd: false, sd: false, battery: 60, wheel: 17, user_id: 2, paid: false, price: 39200.0, reviewed: false,delivered:false,vin:'wait'},
  ])

consumptions=Consumption.create(
  [{car_id: 1, battery: 80, range:500},{car_id: 1, battery: 80, range:510},{car_id: 1, battery: 80, range:520},{car_id: 1, battery: 80, range:470},{car_id: 1, battery: 80, range:440},
    {car_id: 2, battery: 70, range:400},{car_id: 2, battery: 70, range:410},{car_id: 2, battery: 70, range:405},{car_id: 2, battery: 70, range:390},{car_id: 2, battery: 70, range:388},
    {car_id: 3, battery: 60, range:300},{car_id: 3, battery: 60, range:340},{car_id: 3, battery: 60, range:330},{car_id: 3, battery: 60, range:280},{car_id: 3, battery: 60, range:290}])


Car.update(2,paid:true,delivered:true,vin:'USCA987JX24U5')
Car.update(4,paid:true,delivered:true,vin:'USCA987JX24U7')
Car.update(5,paid:true,delivered:true,vin:'USCA987JX24U9')
Car.update(3,paid:true,delivered:true,vin:'USCA117JX12A8')
Car.update(8,paid:true,delivered:true,vin:'USCA888JX77B6')

Review.create([{comment:'I planned to use this car as a getaway car after robbing the bank, after which I will get caught and break my brother out of Fox River',user_id:1,car_id:1,rating:5},
  {comment:'This is the car that was waiting for us when we broke out of Fox River.',user_id:1,car_id:2,rating:4},
  {comment:'I was expecting this car to wait for me at Panama City Airport and it did show up. I will catch T-bag in this car',user_id:3, car_id:3,rating:3},
  {comment:'This was the prisoner transport vehicle to get me into Sona',user_id:1,car_id:4,rating:5},
  {comment:'After all these experiences I will give this car a 4 out of 5.',user_id:1, car_id:5,rating:4},
  {comment:'This car is fast. But the range is limited so that I always let Scofied got away',user_id:2,car_id:6,rating:5},
  {comment:'I will work for the Company if they give me 10 of these cars',user_id:2,car_id:8,rating:1},
  {comment:'I was planning on using a Tesla after stealing the money. But I got caught and broke my hand',user_id:5,car_id:5,rating:1}])



