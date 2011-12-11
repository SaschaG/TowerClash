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

ActiveRecord::Schema.define(:version => 20111209223348) do

  create_table "airs", :force => true do |t|
    t.integer  "dmg"
    t.integer  "rate"
    t.integer  "boni"
    t.integer  "gold"
    t.integer  "christals"
    t.integer  "stone"
    t.integer  "wood"
    t.integer  "iron"
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ambushes", :force => true do |t|
    t.integer  "rate"
    t.integer  "gold"
    t.integer  "christals"
    t.integer  "stone"
    t.integer  "wood"
    t.integer  "iron"
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barracks", :force => true do |t|
    t.integer  "rate"
    t.integer  "gold"
    t.integer  "christals"
    t.integer  "stone"
    t.integer  "wood"
    t.integer  "iron"
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coordinates", :force => true do |t|
    t.integer  "user_id"
    t.integer  "x"
    t.integer  "y"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", :force => true do |t|
    t.integer  "rate"
    t.integer  "gold"
    t.integer  "christals"
    t.integer  "stone"
    t.integer  "wood"
    t.integer  "iron"
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "earths", :force => true do |t|
    t.integer  "dmg"
    t.integer  "rate"
    t.integer  "boni"
    t.integer  "gold"
    t.integer  "christals"
    t.integer  "stone"
    t.integer  "wood"
    t.integer  "iron"
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "escapetunnels", :force => true do |t|
    t.integer  "rate"
    t.integer  "gold"
    t.integer  "christals"
    t.integer  "stone"
    t.integer  "wood"
    t.integer  "iron"
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "factories", :force => true do |t|
    t.integer  "rate"
    t.integer  "gold"
    t.integer  "christals"
    t.integer  "stone"
    t.integer  "wood"
    t.integer  "iron"
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fires", :force => true do |t|
    t.integer  "dmg"
    t.integer  "rate"
    t.integer  "boni"
    t.integer  "gold"
    t.integer  "christals"
    t.integer  "stone"
    t.integer  "wood"
    t.integer  "iron"
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ices", :force => true do |t|
    t.integer  "dmg"
    t.integer  "rate"
    t.integer  "boni"
    t.integer  "gold"
    t.integer  "christals"
    t.integer  "stone"
    t.integer  "wood"
    t.integer  "iron"
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "labs", :force => true do |t|
    t.integer  "speed"
    t.integer  "gold"
    t.integer  "christals"
    t.integer  "stone"
    t.integer  "wood"
    t.integer  "iron"
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slugs", :force => true do |t|
    t.string   "name"
    t.integer  "sluggable_id"
    t.integer  "sequence",                     :default => 1, :null => false
    t.string   "sluggable_type", :limit => 40
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "sequence", "scope"], :name => "index_slugs_on_n_s_s_and_s", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

  create_table "stores", :force => true do |t|
    t.integer  "volume"
    t.integer  "gold"
    t.integer  "christals"
    t.integer  "stone"
    t.integer  "wood"
    t.integer  "iron"
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "towers", :force => true do |t|
    t.string   "name"
    t.integer  "x"
    t.integer  "y"
    t.integer  "user_id"
    t.integer  "points"
    t.string   "position"
    t.string   "space1"
    t.string   "space2"
    t.string   "space3"
    t.string   "space4"
    t.string   "space5"
    t.string   "down1"
    t.string   "down2"
    t.string   "down3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "traps", :force => true do |t|
    t.integer  "dmg"
    t.integer  "gold"
    t.integer  "christals"
    t.integer  "stone"
    t.integer  "wood"
    t.integer  "iron"
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.integer  "wall"
    t.integer  "wood"
    t.integer  "iron"
    t.integer  "gold"
    t.integer  "stone"
    t.integer  "christals"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
