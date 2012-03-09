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

ActiveRecord::Schema.define(:version => 20120308171111) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "center_id"
    t.boolean  "super"
  end

  add_index "admin_users", ["center_id"], :name => "index_admin_users_on_center_id"
  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "carta", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "centers", :force => true do |t|
    t.integer  "country_id"
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "address"
    t.string   "address2"
    t.string   "zip"
    t.string   "phone"
    t.string   "website"
    t.string   "email"
    t.string   "hours"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "centers", ["country_id"], :name => "index_centers_on_country_id"

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "short"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exchanges", :force => true do |t|
    t.integer  "user_id"
    t.integer  "product_id"
    t.integer  "state_id"
    t.integer  "quantity"
    t.integer  "points"
    t.string   "address"
    t.string   "city"
    t.string   "status"
    t.integer  "zip"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exchanges", ["product_id"], :name => "index_exchanges_on_product_id"
  add_index "exchanges", ["user_id"], :name => "index_exchanges_on_user_id"

  create_table "images", :force => true do |t|
    t.string   "img"
    t.string   "name"
    t.string   "description"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["page_id"], :name => "index_images_on_page_id"

  create_table "notifications", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.integer  "recipients"
    t.date     "sent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "cost",        :precision => 10, :scale => 0
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "signatures", :force => true do |t|
    t.string   "name"
    t.string   "lastName"
    t.string   "email"
    t.integer  "cedula"
    t.integer  "cartum_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "signatures", ["cartum_id"], :name => "index_signatures_on_cartum_id"

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "short"
    t.integer  "totalVoters"
    t.integer  "registeredVoters"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
    t.integer  "center_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",    :null => false
    t.string   "encrypted_password",     :limit => 128, :default => ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "lastName"
    t.boolean  "comfirmed",                             :default => false
    t.boolean  "embajador",                             :default => false
    t.integer  "state_id"
    t.string   "city"
    t.integer  "cedula"
    t.date     "bday"
    t.integer  "zip"
    t.integer  "phone"
    t.integer  "points",                                :default => 0
    t.boolean  "esta_inscrito"
    t.boolean  "tiene_intencion"
    t.boolean  "tiene_cedula"
    t.string   "invitation_token",       :limit => 60
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "assigned_to_id"
    t.string   "assigned_to_type"
    t.boolean  "staff",                                 :default => false
  end

  add_index "users", ["assigned_to_id"], :name => "index_users_on_assigned_to_id"
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["invitation_token"], :name => "index_users_on_invitation_token"
  add_index "users", ["invited_by_id"], :name => "index_users_on_invited_by_id"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
