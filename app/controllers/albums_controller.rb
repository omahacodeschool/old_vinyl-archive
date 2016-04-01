class AlbumsController < ApplicationController
  def show
    @album    = Album.find_by_id(params[:id])
    @artists  = Artist.all
    @releases = Release.all
    @formats  = Format.all
    @areas    = Area.all
    @genres   = Genre.all
  end

  def index
    @albums   = Album.all
    @artists  = Artist.all
    @areas    = Area.all
    @genres   = Genre.all
    @formats  = Format.all
    @releases = Release.all
  end

  def new
    # REMOVE THESE ONCE SIDEBAR INFO IS EXCLUDED FROM THIS PAGE
    @albums   = Album.all
    @artists  = Artist.all
    @areas    = Area.all
    @genres   = Genre.all
    @formats  = Format.all
    @releases = Release.all
  end

  def create
    album_title = Album.new

    artist_name = Artist.new

    redirect_to("/artists/:id/new_members")
  end
end
