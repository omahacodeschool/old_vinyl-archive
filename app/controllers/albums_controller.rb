class AlbumsController < ApplicationController
  def show
    @album    = Album.find_by_id(params[:id])
    @artists  = Artist.all
    @releases = Release.all
    @formats  = Format.all
    @areas    = Area.all
    @genres   = Genre.all
    @hide_sidebar = true
    @hide_yield_classes = true
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
    @hide_sidebar = true
    @hide_header = true
    @hide_footer = true
    @hide_yield_classes = true
    
  end

  def create
    @album = Album.new
    @album.title = (params[:album_title])
    @album.save

    @artist = Artist.new
    @artist.name = (params[:artist_name])
    @artist.save

    redirect_to("/artists/#{@artist.id}/new_members")
  end

  def new_album_image
    # REMOVE THESE ONCE SIDEBAR INFO IS EXCLUDED FROM THIS PAGE
    @albums   = Album.all
    @artists  = Artist.all
    @areas    = Area.all
    @genres   = Genre.all
    @formats  = Format.all
    @releases = Release.all

  end
end
