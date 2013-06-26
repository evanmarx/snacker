class Snack < ActiveRecord::Base
	attr_accessible :source_url, :traceback_url, :trail_id

	belongs_to :trail 
end