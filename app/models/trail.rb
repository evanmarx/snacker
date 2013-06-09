class Trail < ActiveRecord::Base
	attr_accessible :user_id, :query

	belongs_to :user 
	has_many :snacks
end