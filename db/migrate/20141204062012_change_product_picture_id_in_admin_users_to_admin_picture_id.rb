class ChangeProductPictureIdInAdminUsersToAdminPictureId < ActiveRecord::Migration
  def self.up
    rename_column :admin_users, :product_picture_id, :admin_picture_id
  end

  def self.down
  end
end
