class CreateBillingAddresses < ActiveRecord::Migration
  def change
    create_table :billing_addresses do |t|
      t.string :full_name
      t.string :email
      t.string :phone_number
      t.string :cell_number
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :notes

      t.timestamps
    end
  end
end
