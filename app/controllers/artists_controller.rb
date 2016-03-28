class ArtistsController < ApplicationController
  def show
    @artist = Artist.find_by_id(params[:id])
    @artist_images = ArtistImage.find_by_id(params[:id])
    @members = Member.all
    @areas = Area.find_by_id(params[:id])
  end

  def index
    @artists = Artist.all
    @album_images = AlbumImage.all
  end
end