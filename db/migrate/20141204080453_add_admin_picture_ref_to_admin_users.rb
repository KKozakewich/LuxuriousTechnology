class AddAdminPictureRefToAdminUsers < ActiveRecord::Migration
  def change
    add_reference :admin_users, :admin_picture, index: true
  end
end
