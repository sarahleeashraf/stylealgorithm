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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120226165702) do

  create_table "colors", :force => true do |t|
    t.string   "name"
    t.string   "hexcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_uid"
  end

  create_table "fabrics", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "garments", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "label_id"
    t.integer  "color_id"
    t.integer  "print_id"
    t.string   "season"
    t.integer  "year"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "style"
    t.string   "hem_length"
    t.string   "sleeve_length"
    t.string   "style_number"
    t.string   "neckline"
    t.integer  "fabric_id"
    t.integer  "user_id"
    t.string   "status"
  end

  create_table "jewelries", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "label_id"
    t.integer  "material_id"
    t.string   "style"
    t.integer  "color_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "labels", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prints", :force => true do |t|
    t.string   "name"
    t.string   "swatch_uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "wears", :force => true do |t|
    t.datetime "date"
    t.integer  "garment_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "jewelry_id"
    t.string   "type"
  end

end
