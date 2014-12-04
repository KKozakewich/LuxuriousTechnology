class Province < ActiveRecord::Base
	has_many :shipping_facilities
	has_many :shipping_addresses
	has_many :billing_addresses
	belongs_to :country
end
