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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130530234025) do

  create_table "bootstraps", :force => true do |t|
    t.string   "cosmo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bottles", :force => true do |t|
    t.string  "name"
    t.integer "year"
    t.string  "color"
    t.string  "varietal"
    t.string  "appellation"
    t.string  "style"
    t.string  "flavors"
    t.float   "alcohol"
    t.integer "production"
    t.float   "price"
    t.integer "picture_id"
    t.string  "occasion"
    t.text    "description"
  end

  create_table "bottles_events", :force => true do |t|
    t.integer "bottle_id"
    t.integer "event_id"
  end

  create_table "events", :force => true do |t|
    t.string "event"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "user_type"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
