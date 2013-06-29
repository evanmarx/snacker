class UsersController < ApplicationController
	before_filter :require_login
	skip_before_filter :require_login, only: [:new, :create]

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])

		if @user.save!
			set_cookie(@user)
			redirect_to root_url
		else
			render :new
		end
	end

	def destroy
	end


end