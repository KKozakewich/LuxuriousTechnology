class AddOrderRefToDisputeOrders < ActiveRecord::Migration
  def change
    add_reference :dispute_orders, :order, index: true
  end
end
