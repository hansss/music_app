class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  
  def current_user
    @current_artist ||= Artist.find(session[:artist_id]) if session[:artist_id]
  end

  def logged_in?
    !!current_user
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
  helper_method :check_for_profile_image
  def check_for_profile_image(image)
    if image == nil
      "/Users/Hana/Documents/wdi_working/Project1/project1/public/uploads/artist/profile_image/default_image.jpeg"
    else
      @artist.profile_image
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
