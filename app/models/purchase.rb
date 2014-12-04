class Purchase < ActiveRecord::Base
	belongs_to :product_picture
	belongs_to :order
end
