class InitSchema < ActiveRecord::Migration[5.2]
  def up
    create_table "admins" do |t|
      t.string "email", default: "", null: false
      t.string "encrypted_password", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.datetime "deleted_at"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["email"], name: "index_admins_on_email", unique: true
      t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    end
    create_table "cart_items" do |t|
      t.integer "product_id"
      t.string "count"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "customer_id"
    end
    create_table "categories" do |t|
      t.string "name"
      t.boolean "status", default: false, null: false
      t.datetime "deleted_at"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
    create_table "customers" do |t|
      t.string "email", default: "", null: false
      t.string "encrypted_password", default: "", null: false
      t.string "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "name_last"
      t.string "name_last_kana"
      t.string "name_first"
      t.string "name_first_kana"
      t.string "address"
      t.string "zip_code"
      t.string "phone_number"
      t.boolean "status", default: false, null: false
      t.datetime "deleted_at"
      t.index ["email"], name: "index_customers_on_email", unique: true
      t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
    end
    create_table "deliveries" do |t|
      t.integer "customer_id"
      t.string "address"
      t.string "zip_code"
      t.string "name"
      t.datetime "deleted_at"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
    create_table "order_records" do |t|
      t.integer "product_id"
      t.integer "order_id"
      t.integer "status"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.datetime "deleted_at"
      t.integer "end_price"
      t.integer "count"
    end
    create_table "orders" do |t|
      t.integer "pay_status", default: 0
      t.integer "status"
      t.string "zip_code"
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "customer_id"
      t.datetime "deleted_at"
      t.string "address"
    end
    create_table "products" do |t|
      t.integer "category_id"
      t.string "name"
      t.text "introduction"
      t.boolean "status", default: false, null: false
      t.integer "price"
      t.text "product_image_id"
      t.datetime "deleted_at"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration, "The initial migration is not revertable"
  end
end
