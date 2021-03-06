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

ActiveRecord::Schema.define(version: 20151103113602) do

  create_table "administrators", force: :cascade do |t|
    t.string   "slug",                   limit: 255
    t.string   "email",                  limit: 255
    t.string   "username",               limit: 255
    t.string   "password_digest",        limit: 255
    t.string   "authentication_token",   limit: 255
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.boolean  "sudo",                               default: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "administrators", ["email"], name: "index_administrators_on_email", unique: true, using: :btree
  add_index "administrators", ["reset_password_token"], name: "index_administrators_on_reset_password_token", unique: true, using: :btree
  add_index "administrators", ["slug"], name: "index_administrators_on_slug", unique: true, using: :btree

  create_table "legal_sections", force: :cascade do |t|
    t.string   "slug",       limit: 255
    t.string   "title",      limit: 255
    t.boolean  "active",                 default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "legal_sections", ["slug"], name: "index_legal_sections_on_slug", unique: true, using: :btree

end
