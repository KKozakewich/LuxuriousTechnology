class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name
      t.integer :pst
      t.integer :gst
      t.integer :hst
      t.integer :qst

      t.timestamps
    end
  end
end
