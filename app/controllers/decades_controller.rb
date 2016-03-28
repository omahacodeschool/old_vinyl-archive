class DecadesController < ApplicationController
  def index
    @releases = Release.all
    @albums   = Album.all
    @artists  = Artist.all
    @genres   = Genre.all
    @formats  = Format.all
  end
end