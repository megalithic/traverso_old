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

ActiveRecord::Schema.define(:version => 20120102021839) do

  create_table "pack_item_categories", :force => true do |t|
    t.string   "title"
    t.integer  "pack_list_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pack_item_categories", ["title"], :name => "index_pack_item_categories_on_title", :unique => true

  create_table "pack_items", :force => true do |t|
    t.string   "title"
    t.text     "notes"
    t.integer  "quantity"
    t.decimal  "weight",       :precision => 6, :scale => 3
    t.boolean  "is_used"
    t.boolean  "is_taken"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pack_list_id"
  end

  add_index "pack_items", ["title"], :name => "index_pack_items_on_title", :unique => true

  create_table "pack_lists", :force => true do |t|
    t.string   "title"
    t.string   "location"
    t.boolean  "is_active"
    t.date     "date_last_used"
    t.integer  "user_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pack_lists", ["title"], :name => "index_pack_lists_on_title", :unique => true

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "email"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
