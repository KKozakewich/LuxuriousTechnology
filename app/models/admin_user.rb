class AdminUser < ActiveRecord::Base
	has_many :help_chats
	belongs_to :admin_picture
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
end
