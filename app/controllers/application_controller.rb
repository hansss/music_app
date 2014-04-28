class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_artist
  
  def current_artist
    @current_artist ||= Artist.find(session[:artist_id]) if session[:artist_id]
  end

  def logged_in?
    !!current_artist
  end
  
  private
  def authenticate
    unless logged_in?
      flash[:error] = "You must be logged in to access this section of the site"
      redirect_to login_url
    end
  end
  
end
