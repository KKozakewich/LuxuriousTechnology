class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.decimal :sale_price
      t.integer :weight_in_grams
      t.integer :height_in_cm
      t.integer :width_in_cm
      t.integer :length_in_cm
      t.boolean :enabled

      t.timestamps
    end
  end
end
