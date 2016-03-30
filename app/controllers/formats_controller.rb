class FormatsController < ApplicationController
  def index
    @formats  = Format.all
    @releases = Release.all
    @genres   = Genre.all
    @areas    = Area.all
    @artists  = Artist.all
  end

  def show
    @format   = Format.find_by_id(params[:id])
    @formats  = Format.all
    @areas    = Area.all
    @artists  = Artist.all
    @genres   = Genre.all
    @releases = Release.all   
  end
end