class UserSessionsController < ApplicationController

def new
  @user_session = UserSession.new
end

def create
  @user_session = UserSession.new(params[:user_session])
  if @user_session.save
    redirect_to root_url
  else
    #something here 
  end

end

def destroy
end

end
