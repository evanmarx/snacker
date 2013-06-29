class TrailsController < ApplicationController 
	before_filter :require_login

	def create 
		@last_trail = current_user.trails.last 
		if @last_trail && @last_trail.snacks.size == 0
			@last_trail.destroy
		end

		@trail = Trail.where(user_id: current_user.id, query: (params[:query]))[0]
		if @trail
			puts "trail found"
		else
			@trail = Trail.new(query: params[:query])
			@trail.user_id = current_user.id
		end
		
		@trail.save!

		render nothing: true
	end


	def index
		@trails = current_user.trails

		if @trails.last && @trails.last.snacks.size == 0
			@trails = @trails[0...-1]
		end

		render :index
	end


	def show
		@trails = current_user.trails
		@trail = @trails.where(id: params[:id])[0]

		render :show
	end

	def merge_action
		@old_trail
		@new_trail 

		@old_trail.merge_trail(@new_trail)
	end


end