class AddCustomerRefToHelpChats < ActiveRecord::Migration
  def change
    add_reference :help_chats, :customer, index: true
  end
end
