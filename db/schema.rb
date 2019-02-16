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

ActiveRecord::Schema.define(version: 20171019180701) do

  create_table "articles", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.string   "company_name", limit: 255
    t.string   "category",     limit: 255
    t.string   "title",        limit: 255
    t.string   "subhead",      limit: 255
    t.text     "details",      limit: 65535
    t.string   "type",         limit: 255
    t.string   "highlight",    limit: 255
    t.string   "author",       limit: 255
    t.string   "inputer",      limit: 255
    t.string   "source",       limit: 255
    t.string   "img_address",  limit: 255
    t.string   "files_path",   limit: 255
    t.string   "excerpt",      limit: 255
    t.string   "hits",         limit: 255
    t.string   "digest",       limit: 255,   default: "off"
    t.string   "keyword",      limit: 255
    t.date     "modified"
    t.date     "created"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "authentications", force: :cascade do |t|
    t.integer  "user_id",    limit: 4,   null: false
    t.string   "provider",   limit: 255, null: false
    t.string   "uid",        limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "authentications", ["provider", "uid"], name: "index_authentications_on_provider_and_uid", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                           limit: 255, null: false
    t.string   "crypted_password",                limit: 255
    t.string   "user_name",                       limit: 255
    t.string   "email_unm",                       limit: 255
    t.string   "designation",                     limit: 255
    t.integer  "phone_number",                    limit: 4
    t.string   "company_name",                    limit: 255
    t.string   "user_style",                      limit: 255
    t.string   "company_style",                   limit: 255
    t.string   "salt",                            limit: 255
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "remember_me_token",               limit: 255
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token",            limit: 255
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree

end
