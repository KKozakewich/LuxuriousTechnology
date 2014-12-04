class ChangeUrlInProductPicturesToName < ActiveRecord::Migration
  def self.up
    rename_column :product_pictures, :file_name, :name
  end

  def self.down
  end
end
