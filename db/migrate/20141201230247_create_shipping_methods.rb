class CreateShippingMethods < ActiveRecord::Migration
  def change
    create_table :shipping_methods do |t|
      t.string :name
      t.integer :min_shipping_time_in_days
      t.integer :max_shipping_time_in_days
      t.decimal :tracking_cost
      t.decimal :one_hundred_dollar_base_insurance_cost
      t.decimal :one_hundred_dollar_additional_insurance_cost
      t.decimal :maximum_insurance_value_allowed
      t.decimal :signature_cost
      t.decimal :improper_packaging_cost
      t.integer :min_shipping_weight_in_grams
      t.integer :max_shipping_weight_in_grams
      t.integer :min_shipping_width_in_cm
      t.integer :max_shipping_width_in_cm
      t.integer :min_shipping_length_in_cm
      t.integer :max_shipping_length_in_cm
      t.integer :min_shipping_height_in_cm
      t.integer :max_shipping_height_in_cm
      t.decimal :base_shipping_cost

      t.timestamps
    end
  end
end
