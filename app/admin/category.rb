ActiveAdmin.register Category do

permit_params :name, :description, :enabled, :top_level_category, :category_id
 
 index do
    selectable_column
    id_column
    column :name
    column :category_id
    column :description
    column :enabled
    column :top_level_category
    column :created_at
    column :updated_at
    actions
  end

end
