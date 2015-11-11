class LinksController < ApplicationController

def new
  @links = Link.new
end


def index
  @links = Link.all
end


def create
  @links = Link.new(links_params)
  if @links.save
    redirect_to root_url
  else
    render :new
  end
end

def update
  @links = Link.find(params[:id])
  if @links.update(links_params)
    redirect_to root_url
  else
    render "create"
  end
end

def destroy
  @links = Link.find(params[:id])
  @links.destroy
  redirect_to root_url
end



def links_params
  params.require(:link).permit(:title, :link, :summary)
end


end
