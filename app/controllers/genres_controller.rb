class GenresController < ApplicationController
  def index
    @genres   = Genre.all
    @artists  = Artist.all
    @albums   = Album.all
    @releases = Release.all
    @areas    = Area.all
    @formats  = Format.all
  end

  def show
    @genre    = Genre.find_by_id(params[:id])
    @areas    = Area.all
    @artists  = Artist.all
    @formats  = Format.all
    @releases = Release.all   
  end
end