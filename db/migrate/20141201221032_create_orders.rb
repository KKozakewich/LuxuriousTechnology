class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_tracking_number
      t.decimal :order_calculated_shipping_costs
      t.decimal :order_actual_shipping_costs
      t.integer :order_pst
      t.integer :order_gst
      t.integer :order_hst
      t.integer :order_qst
      t.string :order_notes
      t.string :billing_address_full_name
      t.string :billing_email
      t.string :billing_phone_number
      t.string :billing_cell_number
      t.string :billing_address
      t.string :billing_city
      t.string :billing_province
      t.string :billing_country
      t.string :billing_postal_code
      t.string :billing_notes
      t.string :shipping_full_name
      t.string :shipping_phone_number
      t.string :shipping_cell_number
      t.string :shipping_email
      t.string :shipping_address
      t.string :shipping_city
      t.string :shipping_province
      t.string :shipping_country
      t.string :shipping_postal_code
      t.string :shipping_notes
      t.string :shipping_facility_name
      t.string :shipping_facility_phone_number
      t.string :shipping_facility_fax_number
      t.string :shipping_facility_email
      t.string :shipping_facility_address
      t.string :shipping_facility_city
      t.string :facility_province
      t.string :facility_country
      t.string :shipping_facility_postal_code
      t.string :shipping_facility_notes
      t.string :shipping_method_name
      t.integer :shipping_method_min_shipping_time_in_days
      t.integer :shipping_method_max_shipping_time_in_days
      t.decimal :shipping_insurance_value
      t.boolean :shipping_method_with_signature

      t.timestamps
    end
  end
end
