class AddDisputeOrderRefToDisputeChats < ActiveRecord::Migration
  def change
    add_reference :dispute_chats, :orderdispute, index: true
  end
end
