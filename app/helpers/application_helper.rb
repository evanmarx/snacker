module ApplicationHelper

	def set_cookie(user)
		user.remember_token = SecureRandom.hex
		cookies[:remember_token] = {
			value: user.remember_token,
			expires: 1.year.from_now
		}
		user.save!
	end

	def current_user 
		@current_user ||= User.find_by_remember_token(cookies[:remember_token])
	end

	def logged_in?
		!!current_user
	end

	def require_login
		unless logged_in?
			redirect_to new_session_url
		end
	end

	def logout
		cookies.delete(:remember_token)
		@current_user = nil
	end
	
end
