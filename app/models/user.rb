class User < ActiveRecord::Base
	attr_accessible :email, :username, :password, :password_confirmation

	has_secure_password

	validates :email, :username, :password, :password_confirmation, presence: true, on: :create
	
	has_many :trails
	has_many :snacks, through: :trails
end