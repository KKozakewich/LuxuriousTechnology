class CreateHelpChats < ActiveRecord::Migration
  def change
    create_table :help_chats do |t|
      t.boolean :message_from_customer
      t.string :message

      t.timestamps
    end
  end
end
