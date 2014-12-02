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

ActiveRecord::Schema.define(version: 20140722144326) do

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.string   "payment_option"
    t.string   "tufts_dept_id"
    t.string   "tufts_grant"
    t.string   "tmc_cost_center"
    t.string   "tmc_dept"
    t.string   "tmc_box"
    t.string   "company_name"
    t.string   "po"
    t.string   "credit_card_no"
    t.string   "credit_card_exp"
    t.string   "credit_card_cvvs"
    t.string   "shipping_address"
    t.string   "billing_address"
    t.integer  "tucf_startup_no"
    t.integer  "tucf_startup_code"
    t.integer  "tucf_cycle_no"
    t.integer  "tucf_cycle_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "samples", force: true do |t|
    t.integer  "order_id"
    t.string   "name"
    t.string   "weight"
    t.string   "estimated_amount"
    t.text     "how_estimated"
    t.string   "preparation"
    t.string   "blot"
    t.string   "pieces"
    t.string   "buffer"
    t.string   "volume"
    t.string   "concentration"
    t.string   "enzyme"
    t.string   "label"
    t.string   "amount"
    t.text     "special_instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "hash_password"
    t.string   "salt"
    t.string   "contact_name"
    t.string   "pi_name"
    t.string   "email_address"
    t.string   "phone"
    t.string   "fax"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
