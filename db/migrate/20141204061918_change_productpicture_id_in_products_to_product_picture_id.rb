class ChangeProductpictureIdInProductsToProductPictureId < ActiveRecord::Migration
  def self.up
    rename_column :products, :productpicture_id, :product_picture_id
  end

  def self.down
  end
end
