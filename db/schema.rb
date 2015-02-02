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

ActiveRecord::Schema.define(version: 20150131234142) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "rut",        limit: 255
    t.string   "address",    limit: 255
    t.integer  "phone",      limit: 4
    t.string   "city",       limit: 255
    t.string   "business",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "rut",           limit: 255
    t.integer  "phone",         limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "vehicle_id_id", limit: 4
    t.integer  "vehicle_id",    limit: 4
  end

  add_index "drivers", ["vehicle_id"], name: "index_drivers_on_vehicle_id", using: :btree
  add_index "drivers", ["vehicle_id_id"], name: "index_drivers_on_vehicle_id_id", using: :btree

  create_table "gpsandsensors", force: :cascade do |t|
    t.string   "model",          limit: 255
    t.string   "brand",          limit: 255
    t.integer  "n_comb",         limit: 4
    t.integer  "c_comb",         limit: 4
    t.string   "mar_comb",       limit: 255
    t.string   "mod_comb",       limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "instalation_id", limit: 4
  end

  add_index "gpsandsensors", ["instalation_id"], name: "index_gpsandsensors_on_instalation_id", using: :btree

  create_table "instalations", force: :cascade do |t|
    t.boolean  "instaled",        limit: 1
    t.date     "date_install"
    t.boolean  "calibrated",      limit: 1
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "vehicle_id",      limit: 4
    t.integer  "gpsandsensor_id", limit: 4
  end

  add_index "instalations", ["gpsandsensor_id"], name: "index_instalations_on_gpsandsensor_id", using: :btree
  add_index "instalations", ["vehicle_id"], name: "index_instalations_on_vehicle_id", using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "patent",      limit: 255
    t.integer  "cod_vehicle", limit: 4
    t.string   "brand",       limit: 255
    t.string   "category",    limit: 255
    t.string   "type",        limit: 255
    t.string   "model",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "company_id",  limit: 4
  end

  add_index "vehicles", ["company_id"], name: "index_vehicles_on_company_id", using: :btree

  add_foreign_key "gpsandsensors", "instalations"
  add_foreign_key "instalations", "vehicles"
  add_foreign_key "vehicles", "companies"
end
