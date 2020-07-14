class PagesController < ApplicationController
	before_action :authenticate_user!, only: [:show]
	before_action :if_logged_in, only: [:home]
	def home
	end

	def show
		@page = User.find(params[:id])
	end
	
	private
	
	def if_logged_in
		redirect_to page_path(current_user) if user_signed_in?
	end
end
