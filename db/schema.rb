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

ActiveRecord::Schema.define(version: 2019_02_15_014528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bikeracks", force: :cascade do |t|
    t.integer "station_id"
    t.string "address"
    t.integer "ward"
    t.integer "community_area"
    t.string "community_name"
    t.integer "totinstall"
    t.integer "historical"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cta_bus_stops", force: :cascade do |t|
    t.integer "station_id"
    t.string "stop_name"
    t.string "stop_desc"
    t.integer "location_type"
    t.integer "parent_station"
    t.integer "wheelchair_boarding"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.string "type_of_stop"
    t.string "stop_name"
    t.datetime "last_visit"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lstops", force: :cascade do |t|
    t.integer "station_id"
    t.integer "parent_stop_id"
    t.string "direction_id"
    t.string "stop_name"
    t.string "station_name"
    t.string "station_descriptive_name"
    t.string "map_id"
    t.boolean "ADA"
    t.boolean "red"
    t.boolean "blue"
    t.boolean "green"
    t.boolean "brown"
    t.boolean "purple"
    t.boolean "purple_express"
    t.boolean "yellow"
    t.boolean "pink"
    t.boolean "orange"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "api_name"
    t.float "latitude"
    t.float "longitude"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "api_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
