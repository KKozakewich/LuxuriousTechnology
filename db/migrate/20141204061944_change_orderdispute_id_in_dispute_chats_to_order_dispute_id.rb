class ChangeOrderdisputeIdInDisputeChatsToOrderDisputeId < ActiveRecord::Migration
  def self.up
    rename_column :dispute_chats, :orderdispute_id, :order_dispute_id
  end

  def self.down
  end
end
