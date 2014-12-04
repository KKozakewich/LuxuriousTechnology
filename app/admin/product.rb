ActiveAdmin.register Product do

permit_params :name, :description, :price, :sale_price, :weight_in_grams, :height_in_cm, :width_in_cm, :length_in_cm, :enabled, :category_id, :product_picture_id 

index do
    selectable_column
    id_column
    column :name
    column :category_id
    column :product_picture_id
    column :description
    column :price
    column :sale_price
    column :weight_in_grams
    column :height_in_grams
    column :length_in_grams
    column :enabled
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
