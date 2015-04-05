class MoviesController < ApplicationController
	def index
		@movies = Movie.all
    @user = current_user
	end

	def new
		@movie = Movie.new
	end

	def show
		@movie = Movie.find(params[:id])
	end
end