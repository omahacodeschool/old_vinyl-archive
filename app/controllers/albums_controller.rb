class AlbumsController < ApplicationController
  def show
    @album = Album.find_by_id(params[:id])
    @artist = Artist.find_by_id(params[:id])
    @release = Release.find_by_id(params[:id])
    @format = Format.find_by_id(params[:id])
    @area = Area.find_by_id(params[:id])
    @genre = Genre.find_by_id(params[:id])
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