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

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update_attributes(movie_params)
      redirect_to movies_path
    else
      render :edit
    end
  end
#This is for adding movies and should only be able to be done by me as the administrator
  def create
    @movie = Movie.create(movie_params)
    if @movie.save
      redirect_to movie_path(@movie.id)
    else
      render 'new'
    end
  end

  def movie_params
    params.require(:movie).permit(:name, :description, :trailer, :movie_poster)
  end
end
