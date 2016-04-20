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

ActiveRecord::Schema.define(version: 20160420174026) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categories", ["menu_id"], name: "index_categories_on_menu_id"

  create_table "delivery_hours", force: :cascade do |t|
    t.time     "monday"
    t.time     "monday_closing_time"
    t.time     "tuesday"
    t.time     "tuesday_closing_time"
    t.time     "wednesday"
    t.time     "wednesday_closing_time"
    t.time     "thursday"
    t.time     "thursday_closing_time"
    t.time     "friday"
    t.time     "friday_closing_time"
    t.time     "saturday"
    t.time     "saturday_closing_time"
    t.time     "sunday"
    t.time     "sunday_closing_time"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pickup_hours", force: :cascade do |t|
    t.time     "monday"
    t.time     "tuesday"
    t.time     "wednesday"
    t.time     "thursday"
    t.time     "friday"
    t.time     "saturday"
    t.time     "sunday"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.time     "monday_closing_time"
    t.time     "tuesday_closing"
    t.time     "wednesday_closing_time"
    t.time     "thursday_closing_time"
    t.time     "friday_closing_time"
    t.time     "saturday_closing_time"
    t.time     "sunday_closing_time"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "restaurant_name"
    t.string   "restaurant_phone_number"
    t.string   "full_address"
    t.boolean  "pickup"
    t.boolean  "delivery"
    t.boolean  "accept_orders_for_later"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "taxes", force: :cascade do |t|
    t.string   "name"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
