class GenresController < ApplicationController
  def index
    @genres  = Genre.all
    @areas   = Area.all
    @artists = Artist.all
    @formats = Format.all
  end
end