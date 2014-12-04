ActiveAdmin.register Order do

permit_params :order_tracking_number, :order_calculated_shipping_costs, :order_actual_shipping_costs, :order_pst, :order_gst, :order_hst, :order_qst, :order_notes, :billing_full_name, :billing_email, :billing_phone_number, :billing_cell_number, :billing_address, :billing_city, :billing_province, :billing_countryy, :billing_postal_code, :billing_notes, :shipping_full_name, :shipping_phone_number, :shipping_cell_number, :shipping_email, :shipping_address, :shipping_city, :shipping_province, :shipping_countryy, :shipping_postal_code, :shipping_notes, :shipping_facility_name, :shipping_facility_phone_number, :shipping_facility_fax_number, :shipping_facility_email, :shipping_facility_address, :shipping_facility_city, :facility_province, :facility_countryy, :shipping_facility_postal_code, :shipping_facility_notes, :shipping_method_name, :shipping_method_min_shipping_time_in_days, :shipping_method_max_shipping_time_in_days, :shipping_insurance_value, :shipping_method_with_signature, :created_at, :updated_at, :order_status, :customer_id
  

index do
    selectable_column
    id_column
    column :customer_id
    column :order_status
    column :order_tracking_number
    column :order_calculated_shipping_costs
    column :order_actual_shipping_costs
    column :order_pst
    column :order_gst
    column :order_hst
    column :order_qst
    column :order_notes
    column :billing_full_name
    column :billing_email
    column :billing_phone_number
    column :billing_cell_number
    column :billing_address
    column :billing_city
    column :billing_province
    column :billing_countryy
    column :billing_postal_code
    column :billing_notes
    column :shipping_full_name
    column :shipping_phone_number
    column :shipping_cell_number
    column :shipping_email
    column :shipping_address
    column :shipping_city
    column :shipping_province
    column :shipping_countryy
    column :shipping_postal_code
    column :shipping_notes
    column :shipping_facility_name
    column :shipping_facility_phone_number
    column :shipping_facility_fax_number
    column :shipping_facility_email
    column :shipping_facility_address
    column :shipping_facility_city
    column :facility_province
    column :facility_countryy
    column :shipping_facility_postal_code
    column :shipping_facility_notes
    column :shipping_method_name
    column :shipping_method_min_shipping_time_in_days
    column :shipping_method_max_shipping_time_in_days
    column :shipping_insurance_value
    column :shipping_method_with_signature
    column :created_at
    column :updated_at
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