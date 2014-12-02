class AddColourRefToProductColours < ActiveRecord::Migration
  def change
    add_reference :product_colours, :colour, index: true
  end
end
