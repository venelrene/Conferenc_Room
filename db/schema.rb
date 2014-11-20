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

ActiveRecord::Schema.define(version: 20141120183859) do

  create_table "campuses", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.integer  "phone_number"
    t.integer  "zip_code"
    t.string   "street_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "campus_id"
  end

  add_index "campuses", ["campus_id"], name: "index_campuses_on_campus_id"

  create_table "conference_room_features", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "room_id"
    t.integer  "feature_id"
  end

  create_table "features", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "reservations", force: true do |t|
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.text     "notes"
    t.string   "event_title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "users_id"
    t.integer  "user_id"
    t.integer  "room_id"
  end

  add_index "reservations", ["room_id"], name: "index_reservations_on_room_id"
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id"
  add_index "reservations", ["users_id"], name: "index_reservations_on_users_id"

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "photo"
    t.text     "description"
    t.integer  "squarefootage"
    t.date     "lastused"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "roomphoto"
    t.integer  "user_id"
    t.integer  "campus_id"
  end

  add_index "rooms", ["campus_id"], name: "index_rooms_on_campus_id"
  add_index "rooms", ["user_id"], name: "index_rooms_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "role",            limit: 25, default: "student"
    t.integer  "campus_id"
  end

  add_index "users", ["campus_id"], name: "index_users_on_campus_id"

end
