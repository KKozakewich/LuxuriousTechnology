class AddAdminUserRefToHelpChats < ActiveRecord::Migration
  def change
    add_reference :help_chats, :adminuser, index: true
  end
end
