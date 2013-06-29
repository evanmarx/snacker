class Trail < ActiveRecord::Base
	attr_accessible :user_id, :query

	belongs_to :user 
	has_many :snacks

	def merge_trail(new_trail)
		new_trail.snacks = new_trail.snacks + self.snacks 
		new_trail.save!
		self.destroy
	end
	
end