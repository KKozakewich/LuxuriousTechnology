ActiveAdmin.register Province do

permit_params :name, :pst, :gst, :hst, :qst, :country_id

index do
    selectable_column
    id_column
    column :country_id
    column :name
    column :pst
    column :gst
    column :hst
    column :qst
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
