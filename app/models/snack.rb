class Snack < ActiveRecord::Base
	attr_accessible :source_url, :trail_id

	belongs_to :trail 
end