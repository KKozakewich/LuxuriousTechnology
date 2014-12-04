class Product < ActiveRecord::Base
	belongs_to :category
	has_many :product_colours
	belongs_to :product_picture
end
