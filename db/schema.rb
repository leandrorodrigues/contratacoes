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

ActiveRecord::Schema.define(version: 0) do

  create_table "contract_event_alerts", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "contract_event_id", null: false
    t.string "titulo", limit: 200
    t.datetime "created_at"
    t.datetime "modified_at"
    t.index ["contract_event_id"], name: "fk_contract_event_alerts_contract_events_idx"
  end

  create_table "contract_events", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "contract_id", null: false
    t.string "title", limit: 200, null: false
    t.datetime "created_at"
    t.datetime "modified_at"
    t.index ["contract_id"], name: "fk_contract_events_contracts1_idx"
  end

  create_table "contract_item_groups", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "contract_id", null: false
    t.string "title", limit: 200, null: false
    t.integer "number", null: false
    t.datetime "created_at"
    t.datetime "contracts_id"
    t.index ["contract_id"], name: "fk_contract_item_groups_contracts1_idx"
  end

  create_table "contract_items", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "number", null: false
    t.string "title", limit: 200, null: false
    t.text "description"
    t.integer "quantity"
    t.decimal "unity_value", precision: 9, scale: 2
    t.decimal "total_value", precision: 9, scale: 2
    t.datetime "created_at"
    t.datetime "modified_at"
    t.integer "contract_item_group_id", null: false
    t.index ["contract_item_group_id"], name: "fk_contract_items_contract_item_groups1_idx"
  end

  create_table "contract_participations", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "contract_id", null: false
    t.integer "user_id", null: false
    t.index ["contract_id"], name: "fk_contract_participations_contracts1_idx"
    t.index ["user_id"], name: "fk_contract_participations_users1_idx"
  end

  create_table "contracts", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "title", limit: 200
    t.integer "process_number"
    t.integer "year"
    t.text "description"
    t.integer "supplies_id", null: false
    t.integer "user_owner_id", null: false
    t.datetime "created_at"
    t.datetime "user_id"
    t.index ["supplies_id"], name: "fk_contracts_suppliers1_idx"
    t.index ["user_owner_id"], name: "fk_contracts_users1_idx"
  end

  create_table "suppliers", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "title", limit: 200, null: false
    t.string "cnpj", limit: 200
    t.datetime "created_at"
    t.datetime "modified_at"
  end

  create_table "users", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", limit: 200
    t.string "username", limit: 200, null: false
    t.string "password", limit: 200, null: false
    t.datetime "created_at"
    t.datetime "modified_at"
    t.index ["username"], name: "username_UNIQUE", unique: true
  end

  add_foreign_key "contract_event_alerts", "contract_events", name: "fk_contract_event_alerts_contract_events", on_update: :cascade, on_delete: :cascade
  add_foreign_key "contract_events", "contracts", name: "fk_contract_events_contracts1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "contract_item_groups", "contracts", name: "fk_contract_item_groups_contracts1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "contract_items", "contract_item_groups", name: "fk_contract_items_contract_item_groups1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "contract_participations", "contracts", name: "fk_contract_participations_contracts1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "contract_participations", "users", name: "fk_contract_participations_users1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "contracts", "suppliers", column: "supplies_id", name: "fk_contracts_suppliers1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "contracts", "users", column: "user_owner_id", name: "fk_contracts_users1", on_update: :cascade, on_delete: :cascade
end
