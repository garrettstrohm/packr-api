# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_06_232106) do

  create_table "adventures", force: :cascade do |t|
    t.integer "trip_id"
    t.integer "user_id"
    t.index ["trip_id"], name: "index_adventures_on_trip_id"
    t.index ["user_id"], name: "index_adventures_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.text "name"
    t.text "description"
  end

  create_table "trip_items", force: :cascade do |t|
    t.integer "quantity"
    t.integer "trip_id"
    t.integer "item_id"
    t.index ["item_id"], name: "index_trip_items_on_item_id"
    t.index ["trip_id"], name: "index_trip_items_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.text "description"
    t.integer "organizer_id"
    t.index ["organizer_id"], name: "index_trips_on_organizer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone"
  end

end
