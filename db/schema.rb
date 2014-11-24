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

ActiveRecord::Schema.define(version: 20141121145239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bars", force: true do |t|
    t.string "business_id"
  end

  create_table "bars_users", id: false, force: true do |t|
    t.integer "bar_id",  null: false
    t.integer "user_id", null: false
  end

  create_table "quiz_images", force: true do |t|
    t.text    "filepath"
    t.string  "category"
    t.integer "value"
  end

  create_table "users", force: true do |t|
    t.string "username"
    t.string "password_digest"
  end

  create_table "users_zip_codes", id: false, force: true do |t|
    t.integer "user_id",     null: false
    t.integer "zip_code_id", null: false
  end

  create_table "zip_codes", force: true do |t|
    t.string "zip_code"
  end

end
