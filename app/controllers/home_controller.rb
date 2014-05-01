class HomeController < ApplicationController
  # authorize_resource :artist
  def index
    @artists = Artist.all
    @songs = Song.all

     @q = Artist.search(params[:q])
    @artists_found = @q.result(distinct:true) 
  end


end