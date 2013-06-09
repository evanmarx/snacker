class SnacksController < ApplicationController

	def new
		@snack = Snack.new
	end 

	def create
		@snack = Snack.new(params[:snack])

		@snack.save

		render partial: "success" 
	end

end 