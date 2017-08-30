# README

This is a full stack web app built with ruby on rails. It is a fan-built Tesla Model 3 custom order web app. This app allows model3 owners and potential buyers to custom order their vehicle, pay the deposit, and share their real world energy consumption and reviews of their vehicles. While the links to Model S and Model X redirect to the official site of Tesla, the app focus on the Model 3 and offers an interaction unique from that of Tesla.

## Technologies Used

* PSQL
* Ruby on rails
* Google Map API
* Javascript, jQuery, SCSS, CSS
* Bootstrap
* Pure CSS

## General Requirements

This web app was built with ruby 2.3 and rails 5.1.3.

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

#### The homepage looks like the following:

