class ProductColour < ActiveRecord::Base
	belongs_to :product
	belongs_to :colour
end
