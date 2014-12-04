class DisputeOrder < ActiveRecord::Base
	has_many :dispute_chats
	belongs_to :order
end
