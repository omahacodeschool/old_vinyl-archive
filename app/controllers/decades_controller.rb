class DecadesController < ApplicationController
  def index
    @releases = Release.all
    @albums   = Album.all
    @artists  = Artist.all
    @genres   = Genre.all
    @formats  = Format.all
    @areas    = Area.all
  end

  def show
    @decade          = (params[:year].to_i - (params[:year].to_i % 10))
    @decade_releases = Release.by_decade[@decade]
    @albums          = Album.all
    @genres          = Genre.all
    @areas           = Area.all
    @artists         = Artist.all
    @formats         = Format.all
    @releases        = Release.all
  end
end