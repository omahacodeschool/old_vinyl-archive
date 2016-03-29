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
end