class FormatsController < ApplicationController
  def index
    @formats  = Format.all
    @releases = Release.all
    @genres   = Genre.all
    @areas    = Area.all
    @artists  = Artist.all
  end
end