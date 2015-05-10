class UsersController < ApplicationController
	before_filter :authenticate_user!
  before_action :authenticate_user!

	def index 
		@users = User.all
    @start = 1
	end

	def show
		@user = current_user
    @start = 1
	end
end