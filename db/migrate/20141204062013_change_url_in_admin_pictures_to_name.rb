class ChangeUrlInAdminPicturesToName < ActiveRecord::Migration
  def self.up
    rename_column :admin_pictures, :file_name, :name
  end

  def self.down
  end
end
