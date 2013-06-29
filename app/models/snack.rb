class Snack < ActiveRecord::Base
	attr_accessible :source_url, :traceback_url, :trail_id, 
									:content_type, :selected_text

	belongs_to :trail 
end