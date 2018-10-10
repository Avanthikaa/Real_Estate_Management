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

ActiveRecord::Schema.define(version: 20181010125916) do

  create_table "houses", force: :cascade do |t|
    t.integer  "realestateid"
    t.integer  "primary_key"
    t.string   "location"
    t.integer  "squarefootage"
    t.integer  "year"
    t.string   "style"
    t.float    "list_price"
    t.integer  "floors"
    t.boolean  "basement"
    t.string   "currentowner"
    t.string   "contact"
    t.string   "potentialbuyers"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "inquiries", force: :cascade do |t|
    t.string   "househunterid"
    t.string   "subject"
    t.string   "message"
    t.string   "reply"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "realestates", force: :cascade do |t|
    t.string  "name"
    t.string  "website"
    t.string  "address"
    t.integer "size"
    t.integer "founded"
    t.float   "revenue"
    t.string  "synopsis"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.boolean  "status"
    t.string   "user_type"
    t.string   "phone"
    t.string   "preferred_contact"
  end

end
