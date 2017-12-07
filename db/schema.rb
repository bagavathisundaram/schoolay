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

ActiveRecord::Schema.define(version: 20171126062325) do

  create_table "anonymous_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.float "commision", limit: 24
    t.bigint "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_anonymous_users_on_school_id"
  end

  create_table "school_product_commissions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "school_id"
    t.integer "product_id"
    t.float "commission", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_school_product_commissions_on_school_id"
  end

  create_table "schools", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "school_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "rollno"
    t.string "parent_primary_email"
    t.string "parent_primary_phone"
    t.string "classname"
    t.boolean "ordered"
    t.string "payment_token"
    t.float "commision", limit: 24
    t.bigint "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_students_on_school_id"
  end

  add_foreign_key "anonymous_users", "schools"
  add_foreign_key "school_product_commissions", "schools"
  add_foreign_key "students", "schools"
end
