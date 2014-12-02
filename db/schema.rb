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

ActiveRecord::Schema.define(version: 20141202004202) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_pictures", force: true do |t|
    t.string   "file_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "adminpicture_id"
  end

  add_index "admin_users", ["adminpicture_id"], name: "index_admin_users_on_adminpicture_id"
  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "billing_addresses", force: true do |t|
    t.string   "full_name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "cell_number"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "province_id"
  end

  add_index "billing_addresses", ["province_id"], name: "index_billing_addresses_on_province_id"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "enabled"
    t.boolean  "top_level_category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
  end

  add_index "categories", ["category_id"], name: "index_categories_on_category_id"

  create_table "colours", force: true do |t|
    t.string   "name"
    t.integer  "red_rgb_value"
    t.integer  "green_rgb_value"
    t.integer  "blue_rgb_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "currency_abbreviation"
    t.decimal  "multiplied_against_CAD_for_currency_value_comparisons"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "full_name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.integer  "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dispute_chats", force: true do |t|
    t.boolean  "message_from_customer"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orderdispute_id"
  end

  add_index "dispute_chats", ["orderdispute_id"], name: "index_dispute_chats_on_orderdispute_id"

  create_table "dispute_orders", force: true do |t|
    t.boolean  "dispute_active"
    t.decimal  "refunded"
    t.decimal  "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
  end

  add_index "dispute_orders", ["order_id"], name: "index_dispute_orders_on_order_id"

  create_table "help_chats", force: true do |t|
    t.boolean  "message_from_customer"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.integer  "adminuser_id"
  end

  add_index "help_chats", ["adminuser_id"], name: "index_help_chats_on_adminuser_id"
  add_index "help_chats", ["customer_id"], name: "index_help_chats_on_customer_id"

  create_table "order_statuses", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "order_tracking_number"
    t.decimal  "order_calculated_shipping_costs"
    t.decimal  "order_actual_shipping_costs"
    t.integer  "order_pst"
    t.integer  "order_gst"
    t.integer  "order_hst"
    t.integer  "order_qst"
    t.string   "order_notes"
    t.string   "billing_address_full_name"
    t.string   "billing_email"
    t.string   "billing_phone_number"
    t.string   "billing_cell_number"
    t.string   "billing_address"
    t.string   "billing_city"
    t.string   "billing_province"
    t.string   "billing_countryy"
    t.string   "billing_postal_code"
    t.string   "billing_notes"
    t.string   "shipping_full_name"
    t.string   "shipping_phone_number"
    t.string   "shipping_cell_number"
    t.string   "shipping_email"
    t.string   "shipping_address"
    t.string   "shipping_city"
    t.string   "shipping_province"
    t.string   "shipping_countryy"
    t.string   "shipping_postal_code"
    t.string   "shipping_notes"
    t.string   "shipping_facility_name"
    t.string   "shipping_facility_phone_number"
    t.string   "shipping_facility_fax_number"
    t.string   "shipping_facility_email"
    t.string   "shipping_facility_address"
    t.string   "shipping_facility_city"
    t.string   "facility_province"
    t.string   "facility_countryy"
    t.string   "shipping_facility_postal_code"
    t.string   "shipping_facility_notes"
    t.string   "shipping_method_name"
    t.integer  "shipping_method_min_shipping_time_in_days"
    t.integer  "shipping_method_max_shipping_time_in_days"
    t.decimal  "shipping_insurance_value"
    t.boolean  "shipping_method_with_signature"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "order_status"
    t.integer  "customer_id"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id"

  create_table "product_colours", force: true do |t|
    t.integer  "quanity"
    t.boolean  "unlimited_quantity"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
    t.integer  "colour_id"
  end

  add_index "product_colours", ["colour_id"], name: "index_product_colours_on_colour_id"
  add_index "product_colours", ["product_id"], name: "index_product_colours_on_product_id"

  create_table "product_pictures", force: true do |t|
    t.string   "file_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "price"
    t.decimal  "sale_price"
    t.integer  "weight_in_grams"
    t.integer  "height_in_cm"
    t.integer  "width_in_cm"
    t.integer  "length_in_cm"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.integer  "productpicture_id"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id"
  add_index "products", ["productpicture_id"], name: "index_products_on_productpicture_id"

  create_table "provinces", force: true do |t|
    t.string   "name"
    t.integer  "pst"
    t.integer  "gst"
    t.integer  "hst"
    t.integer  "qst"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
  end

  add_index "provinces", ["country_id"], name: "index_provinces_on_country_id"

  create_table "purchases", force: true do |t|
    t.integer  "quantity"
    t.integer  "price"
    t.integer  "weight_in_grams"
    t.integer  "length_in_cm"
    t.integer  "width_in_cm"
    t.integer  "height_in_cm"
    t.string   "colour"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "productpicture_id"
    t.integer  "order_id"
  end

  add_index "purchases", ["order_id"], name: "index_purchases_on_order_id"
  add_index "purchases", ["productpicture_id"], name: "index_purchases_on_productpicture_id"

  create_table "shipping_addresses", force: true do |t|
    t.string   "full_name"
    t.string   "phone_number"
    t.string   "cell_number"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "province_id"
  end

  add_index "shipping_addresses", ["province_id"], name: "index_shipping_addresses_on_province_id"

  create_table "shipping_carriers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shipping_facilities", force: true do |t|
    t.string   "facility_name"
    t.string   "phone_number"
    t.string   "fax_number"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "province_id"
  end

  add_index "shipping_facilities", ["province_id"], name: "index_shipping_facilities_on_province_id"

  create_table "shipping_methods", force: true do |t|
    t.string   "name"
    t.integer  "min_shipping_time_in_days"
    t.integer  "max_shipping_time_in_days"
    t.decimal  "tracking_cost"
    t.decimal  "one_hundred_dollar_base_insurance_cost"
    t.decimal  "one_hundred_dollar_additional_insurance_cost"
    t.decimal  "maximum_insurance_value_allowed"
    t.decimal  "signature_cost"
    t.decimal  "improper_packaging_cost"
    t.integer  "min_shipping_weight_in_grams"
    t.integer  "max_shipping_weight_in_grams"
    t.integer  "min_shipping_width_in_cm"
    t.integer  "max_shipping_width_in_cm"
    t.integer  "min_shipping_length_in_cm"
    t.integer  "max_shipping_length_in_cm"
    t.integer  "min_shipping_height_in_cm"
    t.integer  "max_shipping_height_in_cm"
    t.decimal  "base_shipping_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shippingcarrier_id"
  end

  add_index "shipping_methods", ["shippingcarrier_id"], name: "index_shipping_methods_on_shippingcarrier_id"

end
