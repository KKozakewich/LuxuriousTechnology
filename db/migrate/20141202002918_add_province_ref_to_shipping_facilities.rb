class AddProvinceRefToShippingFacilities < ActiveRecord::Migration
  def change
    add_reference :shipping_facilities, :province, index: true
  end
end
