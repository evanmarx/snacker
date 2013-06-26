class SnacksController < ApplicationController

	def index 
		@snacks = Snack.all
	end

	def new
		p params
		
		@snack = Snack.new
	end 

	def create
		p params

		@snack = Snack.new(params[:snack])

		@snack.save

		render partial: "success" 
	end

end 