class ChangeIntegerToDecimalInProvinces < ActiveRecord::Migration
  def up
    change_column :provinces, :pst, :decimal
    change_column :provinces, :gst, :decimal
    change_column :provinces, :qst, :decimal
    change_column :provinces, :hst, :decimal
  end

  def down
  end
end
