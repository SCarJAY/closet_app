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

ActiveRecord::Schema.define(version: 20141003153247) do

  create_table "cameos", force: true do |t|
    t.integer  "item_id"
    t.integer  "outfit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cameos", ["item_id"], name: "index_cameos_on_item_id"
  add_index "cameos", ["outfit_id"], name: "index_cameos_on_outfit_id"

  create_table "items", force: true do |t|
    t.string   "img_url",        null: false
    t.string   "name",           null: false
    t.string   "category",       null: false
    t.string   "dress_code",     null: false
    t.string   "color",          null: false
    t.string   "size",           null: false
    t.string   "brand"
    t.string   "purchased_from"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["user_id"], name: "index_items_on_user_id"

  create_table "outfits", force: true do |t|
    t.string   "name",       null: false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "outfits", ["user_id"], name: "index_outfits_on_user_id"

  create_table "sessions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "city",            null: false
    t.string   "state",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
