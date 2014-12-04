ActiveAdmin.register Purchase do

permit_params :quantity, :price, :weight_in_grams, :length_in_cm, :width_in_cm, :height_in_cm, :colour, :notes, :product_picture_id, :order_id
  

index do
    selectable_column
    id_column
    column :order_id
    column :product_picture_id
    column :quantity
    column :price
    column :weight_in_grams
    column :length_in_cm
    column :width_in_cm
    column :colour
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
