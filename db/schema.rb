# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170716173540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "color"
    t.boolean "ap"
    t.boolean "awd"
    t.boolean "sd"
    t.integer "battery"
    t.integer "wheel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.boolean "paid"
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "prices", force: :cascade do |t|
    t.string "name"
    t.float "awd_price"
    t.float "sd_price"
    t.float "ap_price"
    t.float "battery_70_price"
    t.float "battery_80_price"
    t.float "battery_90_price"
    t.float "battery_100_price"
    t.float "wheel_18_price"
    t.float "wheel_19_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "base_price"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "passport"
    t.date "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cars", "users"
end
