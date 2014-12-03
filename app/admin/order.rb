ActiveAdmin.register Order do

permit_params :order_tracking_number, :order_calculated_shipping_costs, :order_actual_shipping_costs, :order_pst, :order_gst, :order_hst, :order_qst, :order_notes, :billing_full_name, :billing_email, :billing_phone_number, :billing_cell_number, :billing_address, :billing_city, :billing_province, :billing_countryy, :billing_postal_code, :billing_notes, :shipping_full_name, :shipping_phone_number, :shipping_cell_number, :shipping_email, :shipping_address, :shipping_city, :shipping_province, :shipping_countryy, :shipping_postal_code, :shipping_notes, :shipping_facility_name, :shipping_facility_phone_number, :shipping_facility_fax_number, :shipping_facility_email, :shipping_facility_address, :shipping_facility_city, :facility_province, :facility_countryy, :shipping_facility_postal_code, :shipping_facility_notes, :shipping_method_name, :shipping_method_min_shipping_time_in_days, :shipping_method_max_shipping_time_in_days, :shipping_insurance_value, :shipping_method_with_signature, :created_at, :updated_at, :order_status, :customer_id
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