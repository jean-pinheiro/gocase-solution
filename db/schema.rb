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

ActiveRecord::Schema.define(version: 20181103114359) do

  create_table "batches", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "reference"
    t.string   "purchase_channel"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "batches_orders", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "batch_id", null: false
    t.integer "order_id", null: false
    t.index ["batch_id", "order_id"], name: "index_batches_orders_on_batch_id_and_order_id", using: :btree
    t.index ["order_id", "batch_id"], name: "index_batches_orders_on_order_id_and_batch_id", using: :btree
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "reference"
    t.string   "purchase_channel"
    t.string   "client_name"
    t.text     "address",          limit: 65535
    t.string   "delivery_service"
    t.float    "total_value",      limit: 24
    t.text     "line_items",       limit: 65535
    t.string   "status"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

end
