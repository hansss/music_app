class SessionsController < ApplicationController
  def new
  end

  def create
    artist = Artist.find_by_email(params[:email])
    if artist && artist.authenticate(params[:password])
     session[:artist_id] = artist.id
     redirect_to root_path, notice: "logged in!"
     else
     flash.now.alert = "invalid login credentials"
     render "new"
    end
  end

  def destroy
    session[:artist_id] = nil
    redirect_to root_url, notice: "logged out!"
  end
end
