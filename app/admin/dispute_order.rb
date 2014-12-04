ActiveAdmin.register DisputeOrder do

permit_params :dispute_active, :refunded, :notes, :order_id

index do
    selectable_column
    id_column
    column :order_id
    column :dispute_active
    column :refunded
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
