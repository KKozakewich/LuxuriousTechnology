class FixBillingAddressFullNameToBillingFullName < ActiveRecord::Migration
  def self.up
    rename_column :orders, :billing_address_full_name, :billing_full_name
  end

  def self.down
  end
end
