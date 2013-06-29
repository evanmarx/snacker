class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_username(params[:username])

		if user && user.authenticate(params[:password])
			set_cookie(user)
			redirect_to root_url
		else
			render :new
		end
	end

	def destroy
		logout
		redirect_to root_url
	end

end