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

ActiveRecord::Schema.define(version: 20170219231843) do

  create_table "admins", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "auditoria", force: :cascade do |t|
    t.integer  "auditorium_number"
    t.integer  "seating_capacity"
    t.integer  "theater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.boolean  "playing"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "customer_email"
    t.integer  "showing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "showings", force: :cascade do |t|
    t.datetime "time"
    t.integer  "movie_id"
    t.integer  "auditorium_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "theaters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end