class ApplicationController < ActionController::Base
  protect_from_forgery
  load_and_authorize_resource
  helper_method :current_artist
  
  def current_user
    @current_artist ||= Artist.find(session[:artist_id]) if session[:artist_id]
  end

  def logged_in?
    !!current_artist
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url , alert: "You can't access this page"
  end
  
  private
  def authenticate
    unless logged_in?
      flash[:error] = "You must be logged in to access this section of the site"
      redirect_to login_url
    end
  end

  private
  helper_method :verify_if_comment_has_a_registered_author
  def verify_if_comment_has_a_registered_author(comment)
    if comment.artist == nil
      return "Annonymous"
    else
      return comment.artist.name
    end
  end

end
