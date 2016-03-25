class AlbumsController < ApplicationController
  def show
    @album = Album.find_by_id(params[:id])
  end

  def index
    @albums  = Album.all
    @artists = Artist.all
    @areas   = Area.all
    @genres  = Genre.all
    @formats = Format.all
  end
end