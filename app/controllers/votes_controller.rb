class VotesController < ApplicationController

def upvote
  @links = Link.find(params[:id])
  @links.votes.create
  redirect_to root_url
end

def downvote
  @links = Link.find(params[:id])
  if @links.votes.first
    @links.votes.first.destroy
  end
  redirect_to root_url
end


end
