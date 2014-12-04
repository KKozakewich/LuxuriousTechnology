ActiveAdmin.register DisputeChat do

permit_params :message_from_customer, :message, :order_dispute_id

index do
    selectable_column
    id_column
    column :dispute_order_id
    column :message_from_customer
    column :message
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
