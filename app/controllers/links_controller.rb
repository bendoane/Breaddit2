class LinksController < ApplicationController

def index
  @links = Link.all
end

def create
  @links = Link.new
  @links.save
end

def update
  @links = Link.find(params[:id])
  if @links.update(links_params)
    redirect_to root_url
  else
    render "create"
  end
end

def links_params
  params.require(:link).permit(:title, :link, :summary)
end


end
