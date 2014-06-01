# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140601055414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crimes", force: true do |t|
    t.float    "lat"
    t.float    "lng"
    t.string   "offense"
    t.time     "time"
    t.string   "neighborhood"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "neighborhoods", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "lat"
    t.float    "lng"
    t.string   "name"
    t.float    "avg_rad"
  end

  create_table "parks", force: true do |t|
    t.string   "name"
    t.float    "lat"
    t.float    "lng"
    t.string   "facilities"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.string   "address"
    t.float    "lat"
    t.float    "lng"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rec_centers", force: true do |t|
    t.string   "name"
    t.float    "lat"
    t.float    "lng"
    t.string   "facilities"
    t.string   "programs"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resturants", force: true do |t|
    t.float    "lat"
    t.float    "lng"
    t.string   "name"
    t.string   "address"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: true do |t|
    t.float    "lat"
    t.float    "lng"
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
