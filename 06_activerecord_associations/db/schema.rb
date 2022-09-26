# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_26_190002) do

  create_table "appointments", force: :cascade do |t|
    t.string "request"
    t.datetime "time"
    t.integer "pet_id"
    t.integer "handler_id"
  end

  create_table "handlers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phone"
  end

  create_table "owners", force: :cascade do |t|
    t.string "username"
    t.string "address"
    t.string "email"
    t.integer "phone"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "breed"
    t.string "image_url"
    t.datetime "last_fed_at"
    t.datetime "last_walked_at"
    t.integer "owner_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.integer "owner_id"
    t.integer "handler_id"
  end

end
