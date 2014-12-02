class AddProvinceRefToShippingAddresses < ActiveRecord::Migration
  def change
    add_reference :shipping_addresses, :province, index: true
  end
end
