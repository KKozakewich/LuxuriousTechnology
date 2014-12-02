class AddShippingCarrierRefToShippingMethod < ActiveRecord::Migration
  def change
    add_reference :shipping_methods, :shippingcarrier, index: true
  end
end
