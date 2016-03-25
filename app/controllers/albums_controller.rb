class AlbumsController < ApplicationController
  def show
    @album = Album.find_by_id(params[:id])
  end

  def index
    @albums = Album.all
    @artists = Artist.all
    @artist_images = ArtistImage.all
    @tracks = Track.all
    @album_images = AlbumImage.all
    @members = Member.all
    @areas = Area.all
  end
end