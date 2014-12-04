class ChangeShippingcarrierIdInShippingMethodsToProductPictureId < ActiveRecord::Migration
  def self.up
    rename_column :shipping_methods, :shippingcarrier_id, :shipping_carrier_id
  end

  def self.down
  end
end
