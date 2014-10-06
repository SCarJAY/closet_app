

ActiveRecord::Schema.define(version: 20141003153247) do

  enable_extension "plpgsql"

  create_table "cameos", force: true do |t|
    t.integer  "item_id"
    t.integer  "outfit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cameos", ["item_id"], name: "index_cameos_on_item_id", using: :btree
  add_index "cameos", ["outfit_id"], name: "index_cameos_on_outfit_id", using: :btree

  create_table "items", force: true do |t|
    t.string   "img_url",        null: false
    t.string   "name",           null: false
    t.string   "category",       null: false
    t.string   "dress_code"
    t.string   "color",          null: false
    t.string   "size",           null: false
    t.string   "brand"
    t.string   "purchased_from"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["user_id"], name: "index_items_on_user_id", using: :btree

  create_table "outfits", force: true do |t|
    t.string   "name",       null: false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "outfits", ["user_id"], name: "index_outfits_on_user_id", using: :btree

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
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
