class AddProductRefToProductColours < ActiveRecord::Migration
  def change
    add_reference :product_colours, :product, index: true
  end
end
