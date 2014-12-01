class CreateProductPictures < ActiveRecord::Migration
  def change
    create_table :product_pictures do |t|
      t.string :file_name

      t.timestamps
    end
  end
end
