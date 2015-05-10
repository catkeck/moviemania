class ViewingPartiesController < ApplicationController
  before_action :authenticate_user!
  def new
    @movies = Movie.all
    @viewing_party = ViewingParty.new
  end

  def index
    @viewing_parties = ViewingParty.all
    @start = 1
  end

  def create
    @viewing_party = ViewingParty.create(viewing_party_params)
    if @viewing_party.save
      @viewing_party.users.push(current_user)
      redirect_to viewing_party_path(@viewing_party.id)

    else
      render 'new'
    end
  end

  def show
    @viewing_party = ViewingParty.find(params[:id])
    @movie = @viewing_party.movie
    @user = current_user
    @rotten_tomato = RottenTomatoes::RottenMovie.find(:title => @movie.name, :limit => 1)
  end

  def viewing_party_params
    viewing_time = DateTime.new(
        params[:viewing_party]["viewing_time(1i)"].to_i,
        params[:viewing_party]["viewing_time(2i)"].to_i,
        params[:viewing_party]["viewing_time(3i)"].to_i,
        params[:viewing_party]["viewing_time(4i)"].to_i,
        params[:viewing_party]["viewing_time(5i)"].to_i
    )
    
    params[:viewing_party].delete("viewing_time(1i)")
    params[:viewing_party].delete("viewing_time(2i)")
    params[:viewing_party].delete("viewing_time(3i)")
    params[:viewing_party].delete("viewing_time(4i)")
    params[:viewing_party].delete("viewing_time(5i)")

    params[:viewing_party][:viewing_time] = viewing_time

    params.require(:viewing_party).permit(:viewing_time, :theater, :movie_id)
  end

  def join
    @viewing_party = ViewingParty.find(params[:viewing_party_id])
    @viewing_party.users.push(current_user)
    redirect_to @viewing_party
  end

  def leave
    @viewing_party = ViewingParty.find(params[:viewing_party_id])
    @viewing_party.users.delete(current_user)
    redirect_to @viewing_party
  end

end
