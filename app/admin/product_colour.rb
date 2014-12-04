ActiveAdmin.register ProductColour do

permit_params :quantity, :unlimited_quantity, :enabled, :product_id, :colour_id


index do
    selectable_column
    id_column
    column :colour_id
    column :product_id
    column :quantity
    column :unlimited_quantity
    column :enabled
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
