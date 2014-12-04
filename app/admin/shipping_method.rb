ActiveAdmin.register ShippingMethod do

permit_params :name, :min_shipping_time_in_days, :max_shipping_time_in_days, :tracking_cost, :one_hundred_dollar_base_insurance_cost, :one_hundred_dollar_additional_insurance_cost, :maximum_insurance_value_allowed, :signature_cost, :improper_packaging_cost, :min_shipping_weight_in_grams, :max_shipping_weight_in_grams, :min_shipping_width_in_cm, :max_shipping_width_in_cm, :min_shipping_length_in_cm, :max_shipping_length_in_cm, :min_shipping_height_in_cm, :max_shipping_height_in_cm, :base_shipping_cost, :shipping_carrier_id
  
index do
    selectable_column
    id_column
    column :shipping_carrier_id
    column :name
    column :min_shipping_time_in_days
    column :max_shipping_time_in_days
    column :tracking_cost
    column :one_hundred_dollar_base_insurance_cost
    column :one_hundred_dollar_additional_insurance_cost
    column :maximum_insurance_value_allowed
    column :signature_cost
    column :improper_packaging_cost
    column :min_shipping_weight_in_grams
    column :max_shipping_weight_in_grams
    column :min_shipping_width_in_cm
    column :max_shipping_width_in_cm
    column :min_shipping_length_in_cm
    column :max_shipping_length_in_cm
    column :min_shipping_height_in_cm
    column :max_shipping_height_in_cm
    column :base_shipping_cost
    column :shipping_carrier_id
    actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end

