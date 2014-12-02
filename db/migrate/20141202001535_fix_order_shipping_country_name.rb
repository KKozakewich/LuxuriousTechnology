class FixOrderShippingCountryName < ActiveRecord::Migration
  def self.up
    rename_column :orders, :shipping_country, :shipping_countryy
  end

  def self.down
  end
end
