class ChangeOrderDisputeToDisputeOrderId < ActiveRecord::Migration
  def self.up
    rename_column :dispute_chats, :order_dispute_id, :dispute_order_id
  end

  def self.down
  end
end
