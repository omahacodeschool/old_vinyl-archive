class DecadesController < ApplicationController
  def index
    @releases = Release.all
    @albums   = Album.all
    @artists  = Artist.all
    @genres   = Genre.all
    @formats  = Format.all
  end

  def show
    @decade   = params[:year]
    @decade_releases = (Release.info_by_decade)[params[:year].to_i]
    @albums   = Album.all
    @genres   = Genre.all
    @areas    = Area.all
    @artists  = Artist.all
    @formats  = Format.all
    @releases = Release.all
  end
end