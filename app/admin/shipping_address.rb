ActiveAdmin.register ShippingAddress do

permit_params :full_name, :phone_number, :cell_number, :email, :address, :city, :postal_code, :notes, :province_id
  
index do
    selectable_column
    id_column
    column :province_id
    column :facility_name
    column :phone_number
    column :fax_number
    column :email
    column :address
    column :city
    column :postal_code
    column :notes
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
