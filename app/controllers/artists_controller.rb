class ArtistsController < ApplicationController
  def show
    @artist        = Artist.find_by_id(params[:id])
    @artist_images = ArtistImage.find_by_artist_id(params[:id])
    @members       = Member.all
    @areas         = Area.all
    @albums        = Album.all
  end

  def index
    @genres   = Genre.all
    @artists  = Artist.all
    @albums   = Album.all
    @releases = Release.all
    @areas    = Area.all
    @formats  = Format.all
  end
end