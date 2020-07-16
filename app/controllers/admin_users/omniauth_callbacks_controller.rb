class AdminUsers::OmniauthCallbacksController < Devise::OmniauthCallbacksController
	def google_oauth2
		admin = AdminUser.from_omniauth(request.env["omniauth.auth"])
		if admin.persisted?
			flash[:notice] = "Successfully Signed In"
			sign_in_and_redirect admin
		else
			flash[:alert] = "We couldn't sign you in "
			redirect_to new_admin_user_session_url
		end
	end
end
