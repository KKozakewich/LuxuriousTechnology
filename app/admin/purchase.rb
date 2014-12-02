ActiveAdmin.register Purchase do

permit_params :quantity, :price, :weight_in_grams, :length_in_cm, :width_in_cm, :height_in_cm, :colour, :notes, :productpicture_id, :order_id
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
