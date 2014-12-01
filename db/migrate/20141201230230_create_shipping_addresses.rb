class CreateShippingAddresses < ActiveRecord::Migration
  def change
    create_table :shipping_addresses do |t|
      t.string :full_name
      t.string :phone_number
      t.string :cell_number
      t.string :email
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :notes

      t.timestamps
    end
  end
end
