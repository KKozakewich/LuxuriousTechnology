class AddOrderRefToPurchases < ActiveRecord::Migration
  def change
    add_reference :purchases, :order, index: true
  end
end
