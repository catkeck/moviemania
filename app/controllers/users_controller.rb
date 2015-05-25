  class UsersController < ApplicationController
	before_filter :authenticate_user!
  before_action :authenticate_user!

	def index 
		@users = User.all
    @start = 1
	end

	def show
		@user = current_user
    @viewed_user = User.find(params[:id])
    @start = 1
	end
end