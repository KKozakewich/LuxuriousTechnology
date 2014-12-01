class CreateDisputeChats < ActiveRecord::Migration
  def change
    create_table :dispute_chats do |t|
      t.boolean :message_from_customer
      t.string :message

      t.timestamps
    end
  end
end
