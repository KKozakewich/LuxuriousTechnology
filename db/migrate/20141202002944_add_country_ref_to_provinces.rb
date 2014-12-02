class AddCountryRefToProvinces < ActiveRecord::Migration
  def change
    add_reference :provinces, :country, index: true
  end
end
