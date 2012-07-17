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

ActiveRecord::Schema.define(:version => 20120717110242) do

  create_table "courses", :force => true do |t|
    t.string  "name"
    t.integer "faculty_id"
  end

  create_table "faculties", :force => true do |t|
    t.string  "name"
    t.integer "school_id"
  end

  create_table "schools", :force => true do |t|
    t.string "name"
  end

  create_table "states", :force => true do |t|
    t.string "name"
  end

  create_table "student_files", :force => true do |t|
    t.string  "name"
    t.integer "student_id"
  end

  create_table "students", :force => true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "parent_name"
    t.string   "parent_phone"
    t.string   "parent_mobile"
    t.string   "uac_number"
    t.string   "email"
    t.string   "confirm_email"
    t.string   "mobile"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "suburb"
    t.integer  "state_id"
    t.string   "post_code"
    t.integer  "school_id"
    t.integer  "faculty_id"
    t.integer  "course_id"
    t.string   "note1"
    t.string   "note2"
    t.string   "note3"
    t.boolean  "declaration1"
    t.boolean  "declaration2"
    t.boolean  "declaration3"
    t.boolean  "declaration4"
    t.boolean  "completed",     :default => false
    t.integer  "user_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",        :null => false
    t.string   "encrypted_password",     :default => "",        :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "user_type",              :default => "STUDENT"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
