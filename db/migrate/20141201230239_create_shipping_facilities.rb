class CreateShippingFacilities < ActiveRecord::Migration
  def change
    create_table :shipping_facilities do |t|
      t.string :facility_name
      t.string :phone_number
      t.string :fax_number
      t.string :email
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :notes

      t.timestamps
    end
  end
end
