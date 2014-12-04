class Order < ActiveRecord::Base
	has_many :purchases
	has_many :dispute_orders
	belongs_to :customer
end
