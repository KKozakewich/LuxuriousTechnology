class ProductPicture < ActiveRecord::Base
	has_many :products
	has_many :purchases
end
