class ChangeAdminpictureIdInAdminUsersToAdminPictureId < ActiveRecord::Migration
  def self.up
    rename_column :admin_users, :adminpicture_id, :product_picture_id
  end

  def self.down
  end
end
