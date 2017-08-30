# README

This is a full stack web app built with ruby on rails. It is a fan-built Tesla Model 3 custom order web app. This app allows model3 owners and potential buyers to custom order their vehicle, pay the deposit, and share their real world energy consumption and reviews of their vehicles. While the links to Model S and Model X redirect to the official site of Tesla, the app focus on the Model 3 and offers an interaction unique from that of Tesla.

The app allows users to order and manage multiple Model 3s, as more and more people are having more than 1 car in multiple locations across the world.

## Technologies Used

* PSQL
* Ruby on rails
* Google Map API
* Javascript, jQuery, SCSS, CSS
* Bootstrap
* Pure CSS

## General Requirements

This web app was built with ruby 2.3 and rails 5.1.3. It also requires psql for database control.

## Run on Local Host

1. Fork/clone the repo.
2. Run `bundle install` to install all depencies as shown in `Gemfile`
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Sign up for a Stripe account
7. Put Stripe (test) keys into `secrets.yml`
8. Request (free) a Google map API key and put into `secrets.yml`
9. Run `rails s` to start server

## User Experience

* The homepage looks like the following:
!["homepage"](https://github.com/liujohnson118/model3/blob/master/docs/home.png)

* The user can click `sign up` on the top right corner to sign up for an account. The app will check the passport number and the email for duplicate entries and will reject registration with duplicate email and/or passport number.
!["signup"](https://github.com/liujohnson118/model3/blob/master/docs/signup.png)

* The Model S and Model X links on the nav bar redirect the user to the official sites of Model S and Model X, respectively. The Model 3 link on the nav bar will redirect to a Model 3 intro page made by the creator of the web app.
!["Model3 Home"](https://github.com/liujohnson118/model3/blob/master/docs/model3_home.png)

* Once logged in, the user can click "Design Studio" on the buttom of the homepage of model 3 as shown in the picture above. This will lead the user to the custom order page. On the custom order page, the user can select the battery, drive train, color, wheel, autopilot, and self driving features for his/her car. The price is shown on the left of the page. Also, the user can click on his/her province on the left part of the page to see the price after provincial incentives.

!["Custom Order"](https://github.com/liujohnson118/model3/blob/master/docs/top.png)
!["Custom Order"](https://github.com/liujohnson118/model3/blob/master/docs/buttom.png)

* After creating the car for order, the owner will be redirected to his/her list of Teslas with the most recently customized on the top. If the user is over 18 years old as determined by his/her birth date at time of registration, he/she can pay for the car's deposit. The owner also has the method to delete that car.
!["Onwer Resources"](https://github.com/liujohnson118/model3/blob/master/docs/teslas.png)

* Once paid for the car and the car is delivered (as done by some other backend logic and processes), the user can post a reiview by clicking "write a review".
!["Post a review 1"](https://github.com/liujohnson118/model3/blob/master/docs/delivered_car.png)
!["Post a review 2"](https://github.com/liujohnson118/model3/blob/master/docs/post_review.png)

* Once paid for the car and the car is delivered, the owner can also post a power consumption of his/her car so that the app will be able to calculate the real-world ranges of Tesla vehicles and present the best estimates of ranges for vehicles with different batteries to potential buyers.

!["Power Consumption Sharing"](https://github.com/liujohnson118/model3/blob/master/docs/power.png)

* By clicking "My Teslas" on the nav bar, the user will see a list of his/her vehicles. If a car is, say, delivered, the VIN number will be shown. If the deposit is yet to be paid, a message "awaiting deposit" will be shown.

* The user can also see a list of reviews by other owners who have actually paid for their cars by clicking "customer reviews" on the navbar. The ratings are in the form of a numerical rating and a description.
* Below the map in the figure below, the user can type into his/her location or let the app determine his/her current location. The app can then draw 3 circles centred at that location to approximate where a Model 3 can take the user based on the average of consumptions posted by other owners. The radii of the circle represent ranges for different battery sizes.
!["Customer reviews and real world range estimates"](https://github.com/liujohnson118/model3/blob/master/docs/map.png)