class AdminController < ApplicationController

	before_action :confirm_admin

	def show
		@user = User.find(params[:id])
	end


end
