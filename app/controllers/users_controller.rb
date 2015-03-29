class UsersController < ApplicationController
	before_filter :authenticate user!

	def index 
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end
end