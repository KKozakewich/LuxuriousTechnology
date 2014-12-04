class ChangeProductpictureIdInPurchasesToProductPictureId < ActiveRecord::Migration
  def self.up
    rename_column :purchases, :productpicture_id, :product_picture_id
  end

  def self.down
  end
end
