class ShippingMethod < ActiveRecord::Base
	belongs_to :shipping_carrier
end
