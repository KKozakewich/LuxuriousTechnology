class CreateDisputeOrders < ActiveRecord::Migration
  def change
    create_table :dispute_orders do |t|
      t.boolean :dispute_active
      t.decimal :refunded
      t.decimal :notes

      t.timestamps
    end
  end
end
