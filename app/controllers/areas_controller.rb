class AreasController < ApplicationController
  def index
    @areas    = Area.all
    @artists  = Artist.all
    @genres   = Genre.all
    @formats  = Format.all
    @releases = Release.all
  end

  def show
    @area     = Area.find_by_id(params[:id])
    @artists  = Artist.all
    @genres   = Genre.all
    @formats  = Format.all
    @releases = Release.all   
  end
end