class ViewingPartiesController < ApplicationController
  before_action :authenticate_user!
  def new
    @movies = Movie.all
    @viewing_party = ViewingParty.new
  end

  def create
    puts params
    @viewing_party = ViewingParty.create(viewing_party_params)
    redirect_to @viewing_party
  end

  def show
    @viewing_party = ViewingParty.find(params[:id])
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

    p "test"
    p params[:viewing_party]

    params.require(:viewing_party).permit(:viewing_time, :theater, :movie_id)
  end

end
