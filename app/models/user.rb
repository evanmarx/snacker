class User < ActiveRecord::Base
	attr_accessible :email

	has_many :trails
	has_many :snacks, through: :trails
end