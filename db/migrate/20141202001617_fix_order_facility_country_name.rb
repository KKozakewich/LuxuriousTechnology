class FixOrderFacilityCountryName < ActiveRecord::Migration
  def self.up
    rename_column :orders, :facility_country, :facility_countryy
  end

  def self.down
  end
end
