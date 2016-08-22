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

ActiveRecord::Schema.define(version: 20160822152933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "menu_id"
    t.string   "location"
    t.date     "time"
    t.integer  "guests"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_bookings_on_menu_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "menus", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "photo"
    t.integer  "price"
    t.integer  "preparation_time"
    t.integer  "min_guests"
    t.integer  "max_guests"
    t.text     "starter"
    t.text     "main"
    t.text     "dessert"
    t.string   "category"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["user_id"], name: "index_menus_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "postal_address"
    t.string   "encrypted_password"
    t.integer  "rating"
    t.text     "description"
    t.boolean  "admin"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_foreign_key "bookings", "menus"
  add_foreign_key "bookings", "users"
  add_foreign_key "menus", "users"
end
