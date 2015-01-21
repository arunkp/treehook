class Status < ActiveRecord::Base
	# params :content, :user_id
	belongs_to :user
end
