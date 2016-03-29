class DecadesController < ApplicationController
  def index
    @releases = Release.all
    @albums   = Album.all
    @artists  = Artist.all
    @genres   = Genre.all
    @formats  = Format.all
  end

  def show
    @genres   = Genre.all
    @areas    = Area.all
    @artists  = Artist.all
    @formats  = Format.all
    @releases = Release.all
  end
end