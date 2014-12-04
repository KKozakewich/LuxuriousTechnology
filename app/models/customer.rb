class Customer < ActiveRecord::Base
	has_many :orders
	has_many :help_chats
end
