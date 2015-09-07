Skip to content
This repository  
Pull requests
Issues
Gist
 @lcrojanouninorte
 Unwatch 2
  Star 0
  Fork 1
kevinagu/surveyServer
Branch: master  surveyServer/db/schema.rb
@kevinagukevinagu 3 days ago primeros avances
1 contributor
RawBlameHistory     146 lines (139 sloc)  3.969 kB
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
    t.string   "p1"
    t.string   "p2"
    t.string   "p3"
    t.string   "p4"
    t.string   "p5"
    t.string   "p6"
    t.string   "p7"
    t.string   "p8"
    t.string   "p9"
    t.string   "p10"
    t.string   "p11"
    t.string   "p12"
    t.string   "p13"
    t.string   "p14"
    t.string   "p15"
    t.string   "p16"
    t.string   "p17"
    t.string   "p18"
    t.string   "p19"
    t.string   "p20"
    t.string   "p21"
    t.string   "p22"
    t.string   "p23"
    t.string   "p24"
    t.string   "p25"
    t.string   "p26"
    t.string   "p27"
    t.string   "p28"
    t.string   "p29"
    t.string   "p30"
    t.string   "p31"
    t.string   "p32"
    t.string   "p33"
    t.string   "p34"
    t.string   "p35"
    t.string   "p36"
    t.string   "p37"
    t.string   "p38"
    t.string   "p39"
    t.string   "p40"
    t.string   "p41"
    t.string   "p42"
    t.string   "p43"
    t.string   "p44"
    t.string   "p45"
    t.string   "p46"
    t.string   "p47"
    t.string   "p48"
    t.string   "p49"
    t.string   "p50"
    t.string   "p51"
    t.string   "p52"
    t.string   "p53"
    t.string   "p54"
    t.string   "p55"
    t.string   "p56"
    t.string   "p57"
    t.string   "p58"
    t.string   "p59"
    t.string   "p60"
    t.string   "p61"
    t.string   "p62"
    t.string   "p63"
    t.string   "p64"
    t.string   "p65"
    t.string   "p66"
    t.string   "p67"
    t.string   "p68"
    t.string   "p69"
    t.string   "p70"
    t.string   "p71"
    t.string   "p72"
    t.string   "p73"
    t.string   "p74"
    t.string   "p75"
    t.string   "p76"
    t.string   "p77"
    t.string   "p78"
    t.string   "p79"
    t.string   "p80"
    t.string   "p81"
    t.string   "p82"
    t.string   "p83"
    t.string   "p84"
    t.string   "p85"
    t.string   "p86"
    t.string   "p87"
    t.string   "p88"
    t.string   "p89"
    t.string   "p90"
    t.string   "p91"
    t.string   "p92"
    t.string   "p93"
    t.string   "p94"
    t.string   "p95"
    t.string   "p96"
    t.string   "p97"
    t.string   "p98"
    t.string   "p99"
    t.string   "p101"
    t.string   "p102"
    t.string   "p103"
    t.string   "p104"
    t.string   "p105"
    t.string   "p106"
    t.string   "p107"
    t.string   "p108"
    t.string   "p109"
    t.string   "p110"
    t.string   "p111"
    t.string   "p112"
    t.string   "p113"
    t.string   "p114"
    t.string   "p115"
    t.string   "p116"
    t.string   "p117"
    t.string   "p118"
    t.string   "p119"
    t.string   "p120"



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
Status API Training Shop Blog About Pricing
© 2015 GitHub, Inc. Terms Privacy Security Contact Help