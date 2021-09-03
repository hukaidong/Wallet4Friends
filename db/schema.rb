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

ActiveRecord::Schema.define(version: 2021_09_03_174528) do

  create_table "group_payment_items", force: :cascade do |t|
    t.integer "complete_status"
    t.integer "action_type"
    t.decimal "amount"
    t.integer "user_id"
    t.integer "group_payment_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_payment_id"], name: "index_group_payment_items_on_group_payment_id"
    t.index ["user_id"], name: "index_group_payment_items_on_user_id"
  end

  create_table "group_payments", force: :cascade do |t|
    t.string "memo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "money_transfers", force: :cascade do |t|
    t.string "memo"
    t.integer "complete_status"
    t.decimal "amount"
    t.integer "sender_id"
    t.integer "receiver_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["receiver_id"], name: "index_money_transfers_on_receiver_id"
    t.index ["sender_id"], name: "index_money_transfers_on_sender_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.string "fullname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "group_payment_items", "group_payments"
  add_foreign_key "group_payment_items", "users"
  add_foreign_key "money_transfers", "users", column: "receiver_id"
  add_foreign_key "money_transfers", "users", column: "sender_id"
end
