class AreasController < ApplicationController
  def index
    @areas   = Area.all
    @artists = Artist.all
    @genres  = Genre.all
    @formats = Format.all
  end
end