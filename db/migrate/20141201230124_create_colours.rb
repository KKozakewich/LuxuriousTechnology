class CreateColours < ActiveRecord::Migration
  def change
    create_table :colours do |t|
      t.string :name
      t.integer :red_rgb_value
      t.integer :green_rgb_value
      t.integer :blue_rgb_value

      t.timestamps
    end
  end
end
