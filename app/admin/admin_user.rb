ActiveAdmin.register AdminUser do
  permit_params :email, :name, :password, :password_confirmation, :admin_picture_id

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :admin_picture_id
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :updated_at
    actions
  end

  filter :name
  filter :email
  filter :admin_picture_id
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :email
      f.input :admin_picture_id, :as => :select, :collection => AdminPicture.all.collect {|picture| [picture.name, picture.id] }
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
