class FixProductColourQuanityToQuantity < ActiveRecord::Migration
  def self.up
    rename_column :product_colours, :quanity, :quantity
  end

  def self.down
  end
end
