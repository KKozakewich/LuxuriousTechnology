class AddProvinceRefToBillingAddresses < ActiveRecord::Migration
  def change
    add_reference :billing_addresses, :province, index: true
  end
end
