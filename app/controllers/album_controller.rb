class AlbumController < ApplicationController
  def show_all
    @albums = Album.all
    @artists = Artist.all
    @artist_images = ArtistImage.all
    @tracks = Track.all
    @album_images = AlbumImage.all
    @members = Member.all
    @areas = Area.all
    render "albums/index"
  end
end