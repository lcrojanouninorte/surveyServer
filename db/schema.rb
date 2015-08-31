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

ActiveRecord::Schema.define(version: 20150828043327) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characterizations", force: true do |t|
    t.integer  "user_id"
    t.string  "s1_p1"
    t.string  "s1_p2"
    t.string  "s1_p3"
    t.string  "s1_p4"
    t.string  "s2_p1"
    t.string  "s2_p2"
    t.string  "s2_p3"
    t.string  "s2_p4"
    t.string  "s2_p5"
    t.string  "s3_p1"
    t.string  "s3_p2"
    t.string  "s3_p3"
    t.string  "s3_p4"
    t.string  "s3_p5"
    t.string  "s3_p6"
    t.string  "s3_p7"
    t.string  "s4_p1"
    t.string  "s4_p2"
    t.string  "s4_p3"
    t.string  "s5_p1"
    t.string  "s5_p2"
    t.string  "s5_p3"
    t.string  "s6_p1"
    t.string  "s6_p2"
    t.string  "s6_p3"
    t.string  "s7_p1"
    t.string  "s7_p2"
    t.string  "s7_p3"
    t.string  "s7_p4"
    t.string  "s7_p5"
    t.string  "s8_p1"
    t.string  "s8_p2"
    t.string  "s8_p3"
    t.string  "s8_p4"
    t.string  "s8_p5"
    t.string  "s8_p6"
    t.string  "s8_p7"
    t.string  "s8_p8"
    t.string  "s8_p9"
    t.string  "s8_p10"
    t.string  "s8_p11"
    t.string  "s8_p12"
    t.string  "s9_p1"
    t.string  "s9_p2"
    t.string  "s9_p3"
    t.string  "s9_p4"
    t.string  "s9_p5"
    t.string  "s9_p6"
    t.string  "s9_p7"
    t.string  "s9_p8"
    t.string  "s9_p9"
    t.string  "s9_p10"
    t.string  "s9_p11"
    t.string  "s9_p12"
    t.string  "s9_p13"
    t.string  "s9_p14"
    t.string  "s10_p1"
    t.string  "s10_p2"
    t.string  "s10_p3"
    t.string  "s10_p4"
    t.string  "s10_p5"
    t.string  "s10_p6"
    t.string  "s10_p7"
    t.string  "s10_p8"
    t.string  "s10_p9"
    t.string  "s10_p10"
    t.string  "s10_p11"
    t.string  "s10_p12"
    t.string  "s10_p13"
    t.string  "s11_p1"
    t.string  "s11_p2"
    t.string  "s11_p3"
    t.string  "s11_p4"
    t.string  "s11_p5"
    t.string  "s11_p6"
    t.string  "s11_p7"
    t.string  "s11_p8"
    t.string  "s11_p9"
    t.string  "s11_p10"
    t.string  "s11_p11"
    t.string  "s11_p12"
    t.string  "s11_p13"
    t.string  "s11_p14"
    t.string  "s11_p15"
    t.string  "s11_p16"
    t.string  "s11_p17"
    t.string  "s11_p18"
    t.string  "s11_p19"
    t.string  "s11_p20"
    t.string  "s11_p21"
    t.string  "s11_p22"
    t.string  "s11_p23"
    t.string  "s11_p24"
    t.string  "s11_p25"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "finished"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "auth_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
