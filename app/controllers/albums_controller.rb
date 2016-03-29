class AlbumsController < ApplicationController
  def show
    @album = Album.find_by_id(params[:id])
    @artist = Artist.all
    @release = Release.all
    @format = Format.all
    @area = Area.all
    @genre = Genre.all
  end

  def index
    @albums   = Album.all
    @artists  = Artist.all
    @areas    = Area.all
    @genres   = Genre.all
    @formats  = Format.all
    @releases = Release.all
  end
end