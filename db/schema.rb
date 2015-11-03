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

ActiveRecord::Schema.define(version: 20151103140933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "compositions", force: :cascade do |t|
    t.string   "title"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compositions_manufacturers", force: :cascade do |t|
    t.integer  "composition_id"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "compositions_manufacturers", ["composition_id"], name: "index_compositions_manufacturers_on_composition_id", using: :btree
  add_index "compositions_manufacturers", ["manufacturer_id"], name: "index_compositions_manufacturers_on_manufacturer_id", using: :btree

  create_table "custom_fields", force: :cascade do |t|
    t.string   "title"
    t.string   "key"
    t.text     "value"
    t.string   "field_type"
    t.integer  "pos",        default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "page_type"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string   "user_name"
    t.string   "email"
    t.text     "feedback"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kits", force: :cascade do |t|
    t.integer  "composition_id"
    t.integer  "weight_id"
    t.boolean  "show",           default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "kits", ["composition_id"], name: "index_kits_on_composition_id", using: :btree
  add_index "kits", ["weight_id"], name: "index_kits_on_weight_id", using: :btree

  create_table "kits_sweets", force: :cascade do |t|
    t.integer  "kit_id"
    t.integer  "sweet_id"
    t.integer  "count",      default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "kits_sweets", ["kit_id"], name: "index_kits_sweets_on_kit_id", using: :btree
  add_index "kits_sweets", ["sweet_id"], name: "index_kits_sweets_on_sweet_id", using: :btree

  create_table "manufacturers", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opinions", force: :cascade do |t|
    t.string   "user_name"
    t.text     "opinion"
    t.text     "answer"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "packings", force: :cascade do |t|
    t.integer  "code"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "show",               default: true
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "packings_weights", force: :cascade do |t|
    t.integer  "packing_id"
    t.integer  "weight_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sweets", force: :cascade do |t|
    t.integer  "manufacturer_id"
    t.string   "title"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "sweets_category_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "sweets", ["manufacturer_id"], name: "index_sweets_on_manufacturer_id", using: :btree
  add_index "sweets", ["sweets_category_id"], name: "index_sweets_on_sweets_category_id", using: :btree

  create_table "sweets_categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weights", force: :cascade do |t|
    t.string   "title"
    t.integer  "weight"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "compositions_manufacturers", "compositions"
  add_foreign_key "compositions_manufacturers", "manufacturers"
  add_foreign_key "kits", "compositions"
  add_foreign_key "kits", "weights"
  add_foreign_key "kits_sweets", "kits"
  add_foreign_key "kits_sweets", "sweets"
  add_foreign_key "sweets", "manufacturers"
  add_foreign_key "sweets", "sweets_categories"
end
