class HelpChat < ActiveRecord::Base
	belongs_to :customer
	belongs_to :admin_user
end
