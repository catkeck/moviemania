class CommentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @comment = Comment.new
  end

  def create
    @viewing_party = ViewingParty.find(params[:viewing_party_id])
    @comment = @viewing_party.comments.create!(params[:comment].permit!)
    redirect_to @viewing_party
  end
end

<%= background-image: url(/assets/images/background.jpg); %>