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

ActiveRecord::Schema.define(version: 2019_01_18_172112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.bigint "giver_id"
    t.bigint "deliverer_id"
    t.bigint "receiver_id"
    t.string "start_location"
    t.string "end_location"
    t.string "pick_up"
    t.string "drop_off"
    t.boolean "delivered", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "giver_has_rated", default: false
    t.boolean "receiver_has_rated", default: false
    t.index ["deliverer_id"], name: "index_deliveries_on_deliverer_id"
    t.index ["giver_id"], name: "index_deliveries_on_giver_id"
    t.index ["receiver_id"], name: "index_deliveries_on_receiver_id"
  end

  create_table "donations", force: :cascade do |t|
    t.bigint "giver_id"
    t.bigint "receiver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "request_id"
    t.bigint "delivery_id"
    t.index ["delivery_id"], name: "index_donations_on_delivery_id"
    t.index ["giver_id"], name: "index_donations_on_giver_id"
    t.index ["receiver_id"], name: "index_donations_on_receiver_id"
    t.index ["request_id"], name: "index_donations_on_request_id"
  end

  create_table "food_item_donations", force: :cascade do |t|
    t.bigint "food_item_id"
    t.bigint "donation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["donation_id"], name: "index_food_item_donations_on_donation_id"
    t.index ["food_item_id"], name: "index_food_item_donations_on_food_item_id"
  end

  create_table "food_items", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.string "date_made"
    t.string "expiration_date"
    t.boolean "is_packaged"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hours", force: :cascade do |t|
    t.string "time_range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "day_id"
    t.index ["day_id"], name: "index_hours_on_day_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "notes"
    t.bigint "deliverer_id"
    t.bigint "delivery_id"
    t.bigint "rater_id"
    t.index ["deliverer_id"], name: "index_ratings_on_deliverer_id"
    t.index ["delivery_id"], name: "index_ratings_on_delivery_id"
    t.index ["rater_id"], name: "index_ratings_on_rater_id"
  end

  create_table "requests", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "mouths_to_feed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "taken", default: false
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_hours", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "hour_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hour_id"], name: "index_user_hours_on_hour_id"
    t.index ["user_id"], name: "index_user_hours_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "donations", "deliveries"
  add_foreign_key "donations", "requests"
  add_foreign_key "food_item_donations", "donations"
  add_foreign_key "food_item_donations", "food_items"
  add_foreign_key "requests", "users"
  add_foreign_key "user_hours", "hours"
  add_foreign_key "user_hours", "users"
  add_foreign_key "users", "roles"
end
