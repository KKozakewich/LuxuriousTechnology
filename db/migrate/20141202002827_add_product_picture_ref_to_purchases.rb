class AddProductPictureRefToPurchases < ActiveRecord::Migration
  def change
    add_reference :purchases, :productpicture, index: true
  end
end
