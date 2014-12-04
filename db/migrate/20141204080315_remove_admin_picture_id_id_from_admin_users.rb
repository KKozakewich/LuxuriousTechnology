class RemoveAdminPictureIdIdFromAdminUsers < ActiveRecord::Migration
  def change
    remove_column :admin_users, :admin_picture_id_id, :datatype
  end
end
