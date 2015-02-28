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

ActiveRecord::Schema.define(version: 20150228212118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tbl_categories", primary_key: "CategoryID", force: true do |t|
    t.string   "CategoryName"
    t.string   "Description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tbl_products", primary_key: "ProductID", force: true do |t|
    t.string   "ProductCode"
    t.string   "ProductName"
    t.string   "ProductBrand"
    t.string   "ProductPrice"
    t.text     "ProductCategory"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "view_products", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
