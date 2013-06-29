class SnacksController < ApplicationController
	before_filter :require_login

	def index 
		@snacks = current_user.snacks
	end

	def new
		@trails = current_user.trails.reverse
		current_trail = @trails.first
		previous_trails = @trails[1..-1]
		last_updated_previous_trail = previous_trails.max_by { |trail| trail.snacks.last.created_at }
		lastest_change_to_current_trail = current_trail.snacks.size > 0 ? current_trail.snacks.last.created_at : current_trail.created_at
		if lastest_change_to_current_trail < last_updated_previous_trail.snacks.last.created_at
			if current_trail.snacks.size == 0
				@trails.delete_if { |trail| current_trail.id == trail.id }
				current_trail.destroy 
			end
			@trails.delete_if { |trail| trail.id == last_updated_previous_trail.id }
			@trails.unshift(last_updated_previous_trail)
		end

		@snack = Snack.new
	end 

	def create
		@snack = Snack.new(params[:snack])
		unless @snack.trail_id
			@snack.trail_id = current_user.trails.last.id
		end

		@snack.save!

		render partial: "success" 
	end

end 