class AddProductPictureRefToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :productpicture, index: true
  end
end
