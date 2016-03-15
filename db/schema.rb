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

ActiveRecord::Schema.define(version: 20160314184946) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "reciever_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "show",          null: false
    t.time     "time",          null: false
    t.date     "date",          null: false
    t.integer  "host_id",       null: false
    t.text     "description",   null: false
    t.integer  "max_occupancy", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "events", ["show"], name: "index_events_on_show", using: :btree

  create_table "messages", force: :cascade do |t|
    t.text     "body",            null: false
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "requests", force: :cascade do |t|
    t.integer  "active",     default: 1
    t.integer  "guest_id",               null: false
    t.integer  "event_id",               null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "password_digest"
    t.string   "email",                                null: false
    t.string   "first_name",                           null: false
    t.string   "last_name",                            null: false
    t.string   "about_me"
    t.string   "phone_number"
    t.string   "address",                              null: false
    t.string   "location",                             null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "profile_picture_file_name"
    t.string   "profile_picture_content_type"
    t.integer  "profile_picture_file_size"
    t.datetime "profile_picture_updated_at"
    t.string   "where_you_watch_picture_file_name"
    t.string   "where_you_watch_picture_content_type"
    t.integer  "where_you_watch_picture_file_size"
    t.datetime "where_you_watch_picture_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["location"], name: "index_users_on_location", using: :btree

end
