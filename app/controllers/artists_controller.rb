class ArtistsController < ApplicationController
  def show
    @artist        = Artist.find_by_id(params[:id])
    @artist_images = ArtistImage.find_by_id(params[:id])
    @members       = Member.all
    @areas         = Area.find_by_id(params[:id])
    @albums        = Album.all
  end

  def index
    @artists = Artist.all
  end
end