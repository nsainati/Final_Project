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

ActiveRecord::Schema.define(:version => 20130606214911) do

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
    t.float   "alcohol"
    t.integer "production"
    t.float   "price"
    t.text    "description"
    t.integer "brand_id"
    t.string  "picture_source"
  end

  create_table "bottles_events", :force => true do |t|
    t.integer "bottle_id"
    t.integer "event_id"
  end

  create_table "brands", :force => true do |t|
    t.string "name"
    t.string "location"
  end

  create_table "events", :force => true do |t|
    t.string "event"
  end

  create_table "flavorassignments", :force => true do |t|
    t.string "bottle_id"
    t.string "flavor_id"
  end

  create_table "flavors", :force => true do |t|
    t.string "name"
  end

  create_table "occasions", :force => true do |t|
    t.integer "bottle_id"
    t.integer "event_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "user_type"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "varietalassignments", :force => true do |t|
    t.integer "bottle_id"
    t.integer "varietal_id"
  end

  create_table "varietals", :force => true do |t|
    t.string "name"
  end

end
