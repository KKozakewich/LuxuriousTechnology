class AddAdminPictureRefToAdminUsers < ActiveRecord::Migration
  def change
    add_reference :admin_users, :adminpicture, index: true
  end
end
