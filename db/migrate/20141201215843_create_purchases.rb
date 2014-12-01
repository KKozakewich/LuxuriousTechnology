class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :quantity
      t.integer :price
      t.integer :weight_in_grams
      t.integer :length_in_cm
      t.integer :width_in_cm
      t.integer :height_in_cm
      t.string :colour
      t.string :notes

      t.timestamps
    end
  end
end
