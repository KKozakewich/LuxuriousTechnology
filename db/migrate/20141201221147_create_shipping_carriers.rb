class CreateShippingCarriers < ActiveRecord::Migration
  def change
    create_table :shipping_carriers do |t|
      t.string :name

      t.timestamps
    end
  end
end
