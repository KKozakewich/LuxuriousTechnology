class FixOrderBillingCountryName < ActiveRecord::Migration
  def self.up
    rename_column :orders, :billing_country, :billing_countryy
  end

  def self.down
  end
end
