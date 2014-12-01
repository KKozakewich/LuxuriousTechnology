class CreateProductColours < ActiveRecord::Migration
  def change
    create_table :product_colours do |t|
      t.integer :quanity
      t.boolean :unlimited_quantity
      t.boolean :enabled

      t.timestamps
    end
  end
end
