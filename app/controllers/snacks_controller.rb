class SnacksController < ApplicationController

	def new
		@snack = Snack.new
	end 

	def create
		p params 

		@snack = Snack.new(params)

		@snack.save

		render partial: "success" 
	end

end 