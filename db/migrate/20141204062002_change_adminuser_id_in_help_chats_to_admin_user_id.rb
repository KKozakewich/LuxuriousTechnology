class ChangeAdminuserIdInHelpChatsToAdminUserId < ActiveRecord::Migration
  def self.up
    rename_column :help_chats, :adminuser_id, :admin_user_id
  end

  def self.down
  end
end